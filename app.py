from flask import Flask, render_template, request, redirect, flash
import pymysql

app = Flask(__name__)
app.secret_key = 'livraria123'

def conectar():
    return pymysql.connect(
        host='localhost',
        user='root',
        password='glaucieny05/12',
        database='livraria',
        cursorclass=pymysql.cursors.DictCursor
    )

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/livros')
def livros():

    conexao = conectar()

    with conexao.cursor() as cursor:
        cursor.execute("SELECT * FROM livro")
        livros = cursor.fetchall()

    conexao.close()

    return render_template('livros.html', livros=livros)

@app.route('/buscar')
def buscar():

    titulo = request.args.get('titulo')

    conexao = conectar()

    with conexao.cursor() as cursor:

        cursor.execute(
            """
            SELECT *
            FROM livro
            WHERE titulo LIKE %s
            """,
            ('%' + titulo + '%',)
        )

        livros = cursor.fetchall()

    conexao.close()

    return render_template('livros.html', livros=livros)

@app.route('/novo')
def novo():
    return render_template('novo_livro.html')

@app.route('/salvar', methods=['POST'])
def salvar():

    titulo = request.form['titulo']
    isbn = request.form['isbn']
    paginas = request.form['paginas']
    ano = request.form['ano_publicacao']
    valor = request.form['valor']
    estoque = request.form['estoque']

    conexao = conectar()

    with conexao.cursor() as cursor:

        sql = """
        INSERT INTO livro
        (
            titulo,
            isbn,
            paginas,
            ano_publicacao,
            valor,
            estoque,
            id_categoria,
            id_editora
        )
        VALUES
        (%s,%s,%s,%s,%s,%s,1,1)
        """

        cursor.execute(
            sql,
            (
                titulo,
                isbn,
                paginas,
                ano,
                valor,
                estoque
            )
        )

    conexao.commit()
    conexao.close()

    flash('Livro cadastrado com sucesso!')
    return redirect('/livros')

@app.route('/editar/<int:id>')
def editar(id):

    conexao = conectar()

    with conexao.cursor() as cursor:

        cursor.execute(
            "SELECT * FROM livro WHERE id_livro=%s",
            (id,)
        )

        livro = cursor.fetchone()

    conexao.close()

    return render_template(
        'editar_livro.html',
        livro=livro
    )

@app.route('/atualizar/<int:id>', methods=['POST'])
def atualizar(id):

    titulo = request.form['titulo']
    valor = request.form['valor']
    estoque = request.form['estoque']

    conexao = conectar()

    with conexao.cursor() as cursor:

        cursor.execute(
            """
            UPDATE livro
            SET titulo=%s,
                valor=%s,
                estoque=%s
            WHERE id_livro=%s
            """,
            (
                titulo,
                valor,
                estoque,
                id
            )
        )

    conexao.commit()
    conexao.close()

    flash('Livro atualizado com sucesso!')
    return redirect('/livros')

@app.route('/excluir/<int:id>')
def excluir(id):

    conexao = conectar()

    with conexao.cursor() as cursor:

        cursor.execute(
            "DELETE FROM livro WHERE id_livro=%s",
            (id,)
        )

    conexao.commit()
    conexao.close()

    flash('Livro excluído com sucesso!')
    return redirect('/livros')

if __name__ == '__main__':
    app.run(debug=True)