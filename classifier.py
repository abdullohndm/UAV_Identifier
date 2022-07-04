import numpy as np
import pandas as pd
import pickle

from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
from sklearn.model_selection import train_test_split
from sklearn import metrics
from sklearn.datasets import load_iris
from sklearn.naive_bayes import GaussianNB
from sklearn.preprocessing import StandardScaler  

df = pd.read_csv('dataset30.csv')
df_c = df.astype('category')

df_c["Nama PTTA"] = df_c["Nama PTTA"].cat.codes
df_c["Posisi Sayap"] = df_c["Posisi Sayap"].cat.codes
df_c["Kemiringan Sayap"] = df_c["Kemiringan Sayap"].cat.codes
df_c["Bentuk Sayap"] = df_c["Bentuk Sayap"].cat.codes
df_c["Arah Sayap"] = df_c["Arah Sayap"].cat.codes
df_c["Jenis Mesin"] = df_c["Jenis Mesin"].cat.codes
df_c["Jumlah Mesin"] = df_c["Jumlah Mesin"].cat.codes
df_c["Posisi Mesin"] = df_c["Posisi Mesin"].cat.codes
df_c["Bentuk Badan"] = df_c["Bentuk Badan"].cat.codes
df_c["Hidung Badan"] = df_c["Hidung Badan"].cat.codes
df_c["Tengah Badan"] = df_c["Tengah Badan"].cat.codes
df_c["Posisi Ekor"] = df_c["Posisi Ekor"].cat.codes
df_c["Jumlah Ekor"] = df_c["Jumlah Ekor"].cat.codes
df_c["Bentuk Ekor"] = df_c["Bentuk Ekor"].cat.codes
df_c["Persenjataan"] = df_c["Persenjataan"].cat.codes
df_c["Warna"] = df_c["Warna"].cat.codes

df_c.head(30)

feature_cols = ['Posisi Sayap', 'Kemiringan Sayap','Bentuk Sayap','Arah Sayap','Jenis Mesin','Jumlah Mesin','Posisi Mesin','Bentuk Badan','Hidung Badan','Tengah Badan','Posisi Ekor','Jumlah Ekor','Bentuk Ekor','Warna','Nama PTTA']

X = df_c[feature_cols]
X.shape

y = df_c.Persenjataan
y.shape

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

sc = StandardScaler()
X_train = sc.fit_transform(X_train)
X_test = sc.transform(X_test)

classifier = GaussianNB()  
classifier.fit(X_train, y_train)

y_pred = classifier.predict(X_test)

tampil = accuracy_score(y_test, y_pred)

classification_report(y_test, y_pred)

pickle.dump(tampil, open('halima.pkl', 'wb'))