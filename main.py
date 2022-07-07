
from flask import Flask, render_template, request, redirect, url_for, session, jsonify
from flask_mysqldb import MySQL, MySQLdb
import joblib
import speech_recognition as sr
from sklearn.metrics import confusion_matrix, accuracy_score
import MySQLdb.cursors
import re
import numpy as np
import pandas as pd
import os

from sqlalchemy import null

app = Flask(__name__)

app.secret_key = '123'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'identifikasi'


mysql = MySQL(app)
# mysql.init_app(app)

@app.route('/')
@app.route('/login', methods=['GET', 'POST'])
def login():
    msg=''
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        username = request.form['username']
        password = request.form['password']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM accounts WHERE username = %s AND password = %s', (username, password))
        account = cursor.fetchone()
        if account:
            session['loggedin'] = True
            session['id'] = account['id']
            session['username'] = account['username']
            return redirect(url_for('home'))
        else:
            msg("Incorrect username/password!", "danger")
    return render_template('login.html',title="Login")

@app.route('/logout')
def logout():
	session.pop('loggedin', None)
	session.pop('id', None)
	session.pop('username', None)
	return redirect(url_for('login'))

@app.route('/register', methods=['GET', 'POST'])
def register():
    msg = ''
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form:
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
    elif request.method == 'POST':
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM accounts WHERE username = %s', (username,))
        account = cursor.fetchone()
        if account:
            msg = 'Account already exists!'
        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            msg = 'Invalid email address!'
        elif not re.match(r'[A-Za-z0-9]+', username):
            msg = 'Username must contain only characters and numbers!'
        elif not username or not password or not email:
            msg = 'Please fill out the form!'
        else:
            cursor.execute('INSERT INTO accounts VALUES (NULL, %s, %s, %s)', (username, password, email,))
            mysql.connection.commit()
            msg = 'You have successfully registered!'
    return render_template('register.html', msg=msg)

@app.route('/home')
def home():
    if 'loggedin' in session:
        return render_template('home.html', username=session['username'])
    return redirect(url_for('login'))
	
@app.route('/profile')
def profile():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    # Check if user is loggedin
    if 'loggedin' in session:
        cur.execute('SELECT * FROM accounts WHERE id = %s', [session['id']])
        acc = cur.fetchone()
        # Show the profile page with account info
        return render_template('profile.html', account=acc)
    # User is not loggedin redirect to login page
    return redirect(url_for('login'))

# @app.route('/coba1', methods=["GET", "POST"])
# def coba1():
#     transcript = ""
#     if request.method == "POST":
#         print("FORM DATA RECEIVED")
#         if "file" not in request.files:
#             return redirect(request.url)
#         file = request.files["file"]
#         if file.filename == "":
#             return redirect(request.url)
#         if file:
#             recognizer = sr.Recognizer()
#             audioFile = sr.AudioFile(file)
#             with audioFile as source:
#                 data = recognizer.record(source)
#             transcript = recognizer.recognize_google(data, key=None, language="id-ID")
#     return render_template('coba1.html', transcript=transcript)


@app.route('/predict', methods=["POST"])
def predict():
    with open('helium.h5', 'rb') as f:
        model = joblib.load(f)
    
    data1 = request.form['nama_ptta']
    data2 = request.form['posisi_sayap']
    data3 = request.form['kemiringan_sayap']
    data4 = request.form['bentuk_sayap']
    data5 = request.form['arah_sayap']
    data6 = request.form['jenis_mesin']
    data7 = request.form['jumlah_mesin']
    data8 = request.form['posisi_mesin']
    data9 = request.form['bentuk_badan']
    data10 = request.form['hidung_badan']
    data11 = request.form['tengah_badan']
    data12 = request.form['posisi_ekor']
    data13 = request.form['jumlah_ekor']
    data14 = request.form['bentuk_ekor']
    data15 = request.form['warna']
    df = pd.DataFrame().from_dict({
                                "Nama PTTA":[data1],
                                "Posisi Sayap": [data2],
                                "Kemiringan Sayap":[data3],
                                "Bentuk Sayap":[data4], 
                                "Arah Sayap":[data5], 
                                "Jenis Mesin":[data6], 
                                "Jumlah Mesin":[data7], 
                                "Posisi Mesin":[data8], 
                                "Bentuk Badan":[data9], 
                                "Hidung Badan":[data10], 
                                "Tengah Badan":[data11], 
                                "Posisi Ekor":[data12], 
                                "Jumlah Ekor":[data13], 
                                "Bentuk Ekor":[data14], 
                                "Warna":[data15]})
    
    perintah = pd.read_csv("perintah.csv")

# ------------------------------------------------------------------------

    # for i in range(len(df)):
    for index in range(len(perintah)):
        if df["Posisi Sayap"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Posisi Sayap"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

        if df["Kemiringan Sayap"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Kemiringan Sayap"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        
        if df["Bentuk Sayap"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Bentuk Sayap"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

        if df["Arah Sayap"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Arah Sayap"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

# ------------------------------------------------------------------------

        if df["Jenis Mesin"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Jenis Mesin"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

        if df["Jumlah Mesin"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Jumlah Mesin"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        
        if df["Posisi Mesin"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Posisi Mesin"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

# ------------------------------------------------------------------------

        if df["Bentuk Badan"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Bentuk Badan"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        if df["Hidung Badan"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Hidung Badan"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        if df["Tengah Badan"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Tengah Badan"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

# ------------------------------------------------------------------------

        if df["Posisi Ekor"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Posisi Ekor"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        if df["Jumlah Ekor"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Jumlah Ekor"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        if df["Bentuk Ekor"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Bentuk Ekor"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match
        if df["Warna"][0] == perintah.loc[index,"ciri"]:
            print(perintah.loc[index,"angka"])
            df["Warna"][0] = perintah.loc[index,"angka"]
        # else:
            # Error handling if input not match

# ------------------------------------------------------------------------

    y_test = pd.DataFrame().from_dict({"Persenjataan":[0]})
    # print(df)
    pred = model.predict(df)
    
    akurasi = accuracy_score(y_test, pred)

    if akurasi == 1:
        akurasi = 100
    else:
        akurasi = 0

    
    if pred[0] == 1:
        pred = "Bersenjata"
    else:
        pred = "Tidak Bersenjata"

    if data1 is null and data2 is null and data3 is null and data4 is null and data5 is null and data6 is null and  data7 is null and data8 is null and data9 is null and data10 is null and data11 is null and data12 is null and data13 is null and data14 is null and data15 is null:
        return render_template('input.html',pred=0,akurasi=0)
    else:
        return render_template('input.html', pred=pred, akurasi=akurasi)

@app.route('/input')
def input():
    return render_template('input.html')

@app.route('/testing')
def testing():
    with open('akurasi.csv', 'rb') as f:
        konfusi = pd.read_csv(f)
    
    accuracy = konfusi['akurasi']
    precision = konfusi['presisi']
    recall = konfusi['recall']
    error_rate = konfusi['error_rate']

    print(accuracy, precision, recall, error_rate)

    return render_template('testing.html', accuracy=accuracy, precision=precision, recall=recall, error_rate=error_rate)

@app.route('/dataset',methods = ['POST', 'GET'])
def dataset():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    result = cur.execute("SELECT * FROM hasil ORDER BY nama_pesawat")
    employee = cur.fetchall()
    return render_template('dataset.html', employee=employee)
 
@app.route("/ajax_add",methods=["POST","GET"])
def ajax_add():
    # cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        txtnama_pesawat = request.form['txtnama_pesawat']
        txtpersenjataan = request.form['txtpersenjataan']
        txtfusi_informasi = request.form['txtfusi_informasi']
        txtidentifikasi = request.form['txtidentifikasi']
        print(txtnama_pesawat)
        if txtnama_pesawat == '':
            msg = 'Please Input Nama Pesawat'  
        elif txtpersenjataan == '':
           msg = 'Please Input Persenjataan'  
        elif txtfusi_informasi == '':
           msg = 'Please Input Fusi Informasi' 
        elif txtidentifikasi == '':
           msg = 'Please Input Identifikasi' 
        else:        
            cur.execute("INSERT INTO hasil (nama_pesawat,persenjataan,fusi_informasi,identifikasi) VALUES (%s, %s,%s,%s)",[txtnama_pesawat,txtpersenjataan,txtfusi_informasi,txtidentifikasi])
            mysql.connection.commit()       
            cur.close()
            msg = 'New record created successfully'   
    return jsonify(msg)
 
@app.route("/ajax_update",methods=["POST","GET"])
def ajax_update():
    # cursor = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        string = request.form['string']
        txtnama_pesawat = request.form['txtnama_pesawat']
        txtpersenjataan = request.form['txtpersenjataan']
        txtfusi_informasi = request.form['txtfusi_informasi']
        txtidentifikasi = request.form['txtidentifikasi']
        print(string)
        cur.execute("UPDATE hasil SET nama_pesawat = %s, persenjataan = %s, fusi_informasi = %s, identifikasi = %s WHERE id = %s ", [txtnama_pesawat, txtpersenjataan, txtfusi_informasi, txtidentifikasi, string])
        mysql.connection.commit()       
        cur.close()
        msg = 'Record successfully Updated'   
    return jsonify(msg)    
 
@app.route("/ajax_delete",methods=["POST","GET"])
def ajax_delete():
    # cur = mysql.connection.cursor()
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if request.method == 'POST':
        getid = request.form['string']
        print(getid)
        cur.execute('DELETE FROM hasil WHERE id = {0}'.format(getid))
        mysql.connection.commit()       
        cur.close()
        msg = 'Record deleted successfully'   
    return jsonify(msg) 


if __name__ == '__main__':
    app.run(debug=True)