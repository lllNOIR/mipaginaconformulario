from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql

app = Flask(__name__)
app.secret_key = 'secretkey'  

def connect_to_db():
    return pymysql.connect(
        host='localhost',
        user='root',
        password='',
        database='mi_pagina',
        cursorclass=pymysql.cursors.DictCursor,
        ssl_disabled=True  
    )


@app.route('/')
def inicio():
    return render_template('index.html')

@app.route('/sugerir', methods=['GET', 'POST'])
def sugerir():
    if request.method == 'POST':
        nombre = request.form['nombre']
        historia = request.form['historia']
        motivo = request.form['motivo']
        conn = connect_to_db()
        cursor = conn.cursor()
        sql = "INSERT INTO sugerencias (nombre, historia, motivo) VALUES (%s, %s, %s)"
        cursor.execute(sql, (nombre, historia, motivo))
        conn.commit()
        cursor.close()
        conn.close()
        flash('¡Sugerencia enviada correctamente!', 'success')
        return redirect(url_for('inicio'))
    return render_template('sugerir.html')

@app.route('/page1')
def page1():
    return render_template('page1.html')

@app.route('/page2')
def page2():    
    return render_template('page2.html')

@app.route('/page3')
def page3():
    return render_template('page3.html')

@app.route('/page4')
def page4():        
    return render_template('page4.html')

@app.route('/page5')
def page5():    
    return render_template('page5.html')    

@app.route('/page6')
def page6():
    return render_template('page6.html')

@app.route('/page7')
def page7():
    return render_template('page7.html')

@app.route('/page8')
def page8():
    return render_template('page8.html')

@app.route('/page9')
def page9():    
    return render_template('page9.html')

if __name__ == '__main__':
    app.run(debug=True)