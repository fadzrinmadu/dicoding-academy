let searchBooks = [];
const books = [];
const RENDER_EVENT = 'render-books';
const SEARCH_EVENT = 'search-books';
const SAVED_EVENT = 'saved-books';
const STORAGE_KEY = 'BOOKSHELF-APPS';

function generateId() {
  return +new Date();
}

function generateBookObject(id, title, author, year, isCompleted) {
  return {
    id,
    title,
    author,
    year,
    isCompleted,
  };
}

function findBook(bookId) {
  for (const book of books) {
    if (book.id === bookId) {
      return book;
    }
  }

  return null;
}

function findBookIndex(bookId) {
  for (const index in books) {
    if (books[index].id === bookId) {
      return index;
    }
  }

  return -1;
}

function isStorageExist() {
  if (typeof (Storage) === undefined) {
    alert('Browser kamu tidak mendukung local storage');
    return false;
  }
  return true;
}

function saveData() {
  if (isStorageExist()) {
    const parsed = JSON.stringify(books);
    localStorage.setItem(STORAGE_KEY, parsed);
    document.dispatchEvent(new Event(SAVED_EVENT));
  }
}

function loadDataFromStorage() {
  const serializedData = localStorage.getItem(STORAGE_KEY);
  let data = JSON.parse(serializedData);

  if (data !== null) {
    for (const book of data) {
      books.push(book);
    }
  }

  document.dispatchEvent(new Event(RENDER_EVENT));
}

function makeBook(bookObject) {
  const { id, title, author, year, isCompleted } = bookObject;

  const bookTitle = document.createElement('h2');
  bookTitle.innerText = title;

  const bookAuthor = document.createElement('p');
  bookAuthor.innerText = `Penulis: ${author}`;

  const bookYear = document.createElement('p');
  bookYear.innerText = `Tahun: ${year}`;

  const bookContainer = document.createElement('article');
  bookContainer.classList.add('book_item');
  bookContainer.append(bookTitle, bookAuthor, bookYear);

  if (isCompleted) {
    const undoButton = document.createElement('button');
    undoButton.innerText = 'Belum Selesai dibaca';
    undoButton.classList.add('green');
    undoButton.setAttribute('id', id);

    undoButton.addEventListener('click', function() {
      undoBookFromCompleted(id);
    });

    const removeButton = document.createElement('button');
    removeButton.innerText = 'Hapus Buku';
    removeButton.classList.add('red');
    removeButton.setAttribute('id', id);

    removeButton.addEventListener('click', function() {
      removeBookFromCompleted(id);
    });

    const buttonContainer = document.createElement('div')
    buttonContainer.classList.add('action');
    buttonContainer.append(undoButton, removeButton);

    bookContainer.append(buttonContainer);
  } else {
    const checkButton = document.createElement('button');
    checkButton.innerText = 'Selesai dibaca';
    checkButton.classList.add('green');
    checkButton.setAttribute('id', id);

    checkButton.addEventListener('click', function() {
      addBookToCompleted(id)
    });

    const removeButton = document.createElement('button');
    removeButton.innerText = 'Hapus Buku';
    removeButton.classList.add('red');
    removeButton.setAttribute('id', id);

    removeButton.addEventListener('click', function() {
      removeBookFromCompleted(id);
    });

    const buttonContainer = document.createElement('div')
    buttonContainer.classList.add('action');
    buttonContainer.append(checkButton, removeButton);

    bookContainer.append(buttonContainer);
  }

  return bookContainer;
}

function addBook() {
  const bookTitle = document.getElementById('inputBookTitle').value;
  const bookAuthor = document.getElementById('inputBookAuthor').value;
  const bookYear = document.getElementById('inputBookYear').value;
  const isCompleted = document.getElementById('inputBookIsComplete').checked;

  const generatedID = generateId();
  const bookObject = generateBookObject(generatedID, bookTitle, bookAuthor, bookYear, isCompleted);
  books.push(bookObject);

  document.dispatchEvent(new Event(RENDER_EVENT));
  saveData();
}

function addBookToCompleted(bookId) {
  const bookTarget = findBook(bookId);

  if (bookTarget == null) return;

  bookTarget.isCompleted = true;
  document.dispatchEvent(new Event(RENDER_EVENT));
  saveData();
}

function removeBookFromCompleted(bookId) {
  const bookTarget = findBookIndex(bookId)

  if (bookTarget === -1) return;

  books.splice(bookTarget, 1);
  document.dispatchEvent(new Event(RENDER_EVENT));
  saveData();
}

function undoBookFromCompleted(bookId) {
  const bookTarget = findBook(bookId);
  if (bookTarget == null) return;

  bookTarget.isCompleted = false;
  document.dispatchEvent(new Event(RENDER_EVENT));
  saveData();
}

function searchBook() {
  const searchBookTitle = document.getElementById('searchBookTitle').value;
  const query = searchBookTitle.toLowerCase();

  const results = books.filter((book) => book.title.toLowerCase().includes(query));
  searchBooks = [...results];
  document.dispatchEvent(new Event(SEARCH_EVENT));
}

document.addEventListener('DOMContentLoaded', function () {
  const submitForm = document.getElementById('inputBook');
  const searchForm = document.getElementById('searchBook');

  submitForm.addEventListener('submit', function (event) {
    event.preventDefault();
    addBook();
  });

  searchForm.addEventListener('submit', function(event) {
    event.preventDefault();
    searchBook();
  });

  if (isStorageExist()) {
    loadDataFromStorage();
  }
});

document.addEventListener(SAVED_EVENT, () => {
  console.log('Data berhasil di simpan.');
});

document.addEventListener(RENDER_EVENT, function () {
  const incompleteBookshelfList = document.getElementById('incompleteBookshelfList');
  const completeBookshelfList = document.getElementById('completeBookshelfList');

  // clearing list item
  incompleteBookshelfList.innerHTML = '';
  completeBookshelfList.innerHTML = '';

  for (const book of books) {
    const bookElement = makeBook(book);
    if (book.isCompleted) {
      completeBookshelfList.append(bookElement);
    } else {
      incompleteBookshelfList.append(bookElement);
    }
  }
});

document.addEventListener(SEARCH_EVENT, function () {
  const incompleteBookshelfList = document.getElementById('incompleteBookshelfList');
  const completeBookshelfList = document.getElementById('completeBookshelfList');

  // clearing list item
  incompleteBookshelfList.innerHTML = '';
  completeBookshelfList.innerHTML = '';

  for (const book of searchBooks) {
    const bookElement = makeBook(book);
    if (book.isCompleted) {
      completeBookshelfList.append(bookElement);
    } else {
      incompleteBookshelfList.append(bookElement);
    }
  }
});
