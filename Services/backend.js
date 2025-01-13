const db=require("./db")

async function getBooks(){
    const rows= await db.query( "SELECT * FROM BOOKS" )
    return rows?rows:[]
}

async function getBook(id){
    const rows = await db.query( "SELECT * FROM BOOKS WHERE ID=?",[id] )
    return rows?row:[]
}

async function createBook(book){
    const rows = await db.query("INSERT INTO songs (title, author, genre, cover_image) VALUES (?,?,?,?)", [book.title, book.author, book.genre, book.cover_image])

    let message ="Error in creating book"

    if (rows.affectedRows)
        message="Book created successfully"

    return {message}
}

async function updateBook(id,book){
    const result= await db.query(` update books set title=?, author=?, genre=?, cover_image=? where id=?`, [book.title, book.author, book.genre, book.cover_image, id])

    let message ="Error in updating book"
    if (result.affectedRows)
        message="book updated successfully"
    return {message}
}

async function patchBook(id,book){
    let fields= Object.keys(book).map( (field)=> field+"=?").join(", ")

    let updateValues=Object.values(book)
    updateValues.push(id)
    console.log("Fields:", fields)
    console.log("updateValues:", updateValues)

    const result= await db.query(`update book set ${fields} where id=?`, updateValues)   

    let message ="Error in updating book"
    if (result.affectedRows)
        message="book updated successfully"
    return {message}
}

async function removeBook(id){
    const result= await db.query(` delete from book where id=?`, [id])

    let message ="Error in deleting book"
    if (result.affectedRows)
        message="book deleted successfully"
    return {message}
}

module.exports={
    getBooks,
    getBook,
    createBook,
    updateBook,
    patchBook,
    removeBook
}