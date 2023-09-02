import UIKit

struct Note: Codable
{
    var title: String
    var text: String
    var timestamp: Date
}

var note1 = Note(title: "Note 1", text: "note içerik", timestamp: Date())
var note2 = Note(title: "Note 2", text: "note içerik", timestamp: Date())
var note3 = Note(title: "Note 3", text: "note içerik", timestamp: Date())
var note4 = Note(title: "Note 4", text: "note içerik", timestamp: Date())

var notes = [note1, note2, note3, note4]

let propertyListEnc = PropertyListEncoder()
let propertyListDec = PropertyListDecoder()

let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

let encodedNotesArr = try? propertyListEnc.encode(notes)

let noteFileURL = documentDirectory.appendingPathComponent("notlar").appendingPathExtension("plist")

try? encodedNotesArr!.write(to: noteFileURL)

let notesArrData = try! Data(contentsOf: noteFileURL)

let decodedNotesArr = try? propertyListDec.decode([Note].self, from: notesArrData)

if let printableNote = decodedNotesArr{
    for kadir in printableNote{
        print(kadir)
    }
}

























/*
let newNote = Note(title: "İlk Not", text: "merhaba bu benim ilk notum", timestamp: Date())

let propertyListEncoder = PropertyListEncoder()
let propertyListDecoder = PropertyListDecoder()


let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
print(documentDirectory)

let notesURL = documentDirectory.appendingPathComponent("notes").appendingPathExtension("plist")


let encodedNewNote = try? propertyListEncoder.encode(newNote)
//try? encodedNewNote!.write(to: notesURL)

if let newNoteData = try? Data(contentsOf: notesURL), let readNote =  try? propertyListDecoder.decode(Note.self
                                                                                                      , from: newNoteData){
    print(readNote)
}

*/


