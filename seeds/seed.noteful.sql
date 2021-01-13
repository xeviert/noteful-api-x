TRUNCATE notes, folders RESTART IDENTITY CASCADE;

BEGIN;

INSERT INTO folders
  (title)
VALUES
  ('A Folder'),
  ('Second Fold'),
  ('Tres Folder');

INSERT INTO notes
  (title, content, folder_id)
VALUES
    (
      'First title note',
      'In fact, it was a box of Oscars legally obtained medical marijuana. Primo bud. Real sticky weed. Theres unlimited juice? This party is gonna be off the hook.',
      1
    ),
    (
      'Second Title',
      'Way to plant, Ann! God knows theyre squinters. What about macaroni – let me finish – salad? Smack of ham. What is she doing at a beauty pageant? Is she running the lights or something?',
      2
    ),
    (
      'Third title',
      'Of course. The "Bob Loblaw Law Blog." Wow. You, sir, are a mouthful! This was a big get for God. Oh, yeah. The guy in the $4,000 suit is holding the elevator for a guy who doesnt make that in three months. COME ON!',
      3
    ),    
    (
      'Fourth title note',
      'Te quiero. English, please. I love you! Great, now Im late. Wow, this is the best free scrapbooking class Ive ever taken! ps This one really cracks me up for some reason. How could I say no to the woman who gave me chlamydia?',
      3
    ),
    (
      'Fifth',
      'No, Pop-pop does not get a treat. I just bought you a f**king pizza. ¡Soy loco por los Cornballs! I am going to my spin class. I thought you had vertigo. Friday night. We have unlimited juice? This party is going to be off the hook. Friday night. Go ahead, touch the cornballer. Well, OK, have sex with this girl. Right now. Get in there, have some sex with her.',
      2
    ),
    (
      'Sixxth',
      'If I make this comeback, Ill buy you a hundred George Michaels that you can teach to drive! Wine only turns to alcohol if you let it sit. So Ann, the question is, do you want a man or a boy? I know how I would answer. Theres unlimited juice? This party is gonna be off the hook. Did Ted make an appointment? No. Well then Ted can GET THE HELL OUT OF THIS OFFICE! YOU GET THE HELL OUT!',
      2
    ),
    (
      'Siete',
      'In fact, it was a box of Oscars legally obtained medical marijuana. Primo bud. Real sticky weed. Theres unlimited juice? This party is gonna be off the hook.',
      1
    ),
    (
      'ESPN The Ocho',
      'Way to plant, Ann! God knows theyre squinters. What about macaroni – let me finish – salad? Smack of ham. What is she doing at a beauty pageant? Is she running the lights or something?',
      1
    );

COMMIT;