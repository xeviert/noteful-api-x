function makeNotesArray() {
    return [
        {
            id: 1,
            title: 'Note One',
            content: 'This is note one',
            modified: Date.now(),
            folder: 1
        },
        {
            id: 2,
            title: 'Note Two',
            content: 'This is note two',
            modified: Date.now(),
            folder: 2
        },
        {
            id: 3,
            title: 'Note Three',
            content: 'This is note three',
            modified: Date.now(),
            folder: 3
        }
    ]
}

function makeMaliciousNote() {
    const maliciousNote = {
        id: 64,
        title: 'Naughty naughty very naughty <script>alert("xss");</script>',
        content: `Bad image <img src="https://url.to.file.which/does-not.exist" onerror="alert(document.cookie);">. But not <strong>all</strong> bad.`,
        modified: new Date().toISOString(),
        folder: 1
    };
    const expectedNote = {
        ...maliciousNote,
        title:
        'badbadbad hty &lt;script&gt;alert("xss");&lt;/script&gt;',
        content: `Bad image <img src="https://url.to.file.which/does-not.exist">. But not <strong>all</strong> bad.`,
    };
    return {
        maliciousNote,
        expectedNote,
    }
}

module.exports = {
    makeNotesArray,
    makeMaliciousNote,
}