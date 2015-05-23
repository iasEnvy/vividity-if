
"Vividity" by Ben Scott.
The release number is 1. The story creation year is 2015. 
The story headline is "An adventure in puzzles and overwriting". 
The story genre is "Science Fiction / Adventure".

Include Basic Screen Effects by Emily Short.
Include Basic Help Menu by Emily Short.
Include Locksmith by Emily Short.
Include Punctuation Removal by Emily Short.
Include Room Description Control by Emily Short.
Include Single Paragraph Description by Emily Short.
Include Plurality by Emily Short.
Include Boilerplate by Ben Scott.
Use the serial comma and memory economy.
Use brief room descriptions.
Use engineering notation.

Chapter 1 - Initialization

Section 1 - Aliases

to say b: say "[bold type]";
to say i: say "[italic type]";
to say r: say "[roman type]";
to say fl: say "[fixed letter spacing]";
to say vl: say "[variable letter spacing]";
to say ob: say "[bracket]";
to say cb: say "[close bracket]";

Section 2 - Player Extension

A person is either awake or asleep. A person is usually awake.
A mood is a kind of value. The moods are depressed, melancholic, neutral, hypomanic, and manic. 
A person has a mood. A person is usually neutral.
A person can be psychotic. [A person is not usually psychotic.]

Section 3 - Item Extension

A canteen is a thing. 

Weight is a kind of value. Everything has a weight.
1kg specifies a weight. 1g specifies a weight scaled down by 1000.
The verb to weight means the weight property.
Definition: A thing is heavy if its weight is 10kg or more.

A volume is a kind of value.
2L specifies a volume. 2 L specifies a volume.
2000mL specifies a volume scaled down by 1000. 2000 mL specifies a volume.

A fluid container is a kind of thing. A fluid container has a volume called capacity. 
[A fluid container's volume is usually 1000mL. ]
[After printing the name of a fluid container while listing contents: say "[if ]".]

A fluid container can be empty or full. After printing the name of a full fluid container while listing contents: say " (full)". After printing the name of an empty fluid container while listing contents: say " (empty)".

A Draught is a kind of fluid container.

Section 4 - Room Extension

A room can be indoors or outdoors. A room is usually outdoors.  

Chapter 2 - Vivid Beginnings

Prolog is a Scene. Prolog begins when play begins. 
Prolog Flag is a truth state that varies. Prolog Flag is true.
Prolog ends when Prolog Flag is false.
To end Prolog: now the Prolog Flag is false.

When Prolog Begins:
	display the boxed quotation "Vividity                                           ";
	show the current quotation;
	wait for any key;
	clear the screen;
	say "Rosy mist departs around a falling man. The edge of the canyon's shadow dances along uneven crags, casting a sharp shadow between lines of scarlet and thulian, traced down through cracks by a man, presently crumpled into an exposed ravine. Onlookers squirm at the sight; some are much more [i]moved[r] by the spectacle. Before too long (and after the catwalk underwent a thorough scrubbing down by the [i]real[r] heroes in this situation), the crowd thinned. Authorities came and went; nobody could have seen who shot him. Many began to leave the platform, in disgust or boredom.";
	wait for any key;
	clear the screen;
	say "One girl didn't leave. She stood, transfixed by the coral and mauve stains on the rocks, oblivious to the sunset of rainbows falling on the canyon. Evening subdued the canyon's vibrance, but she still had them glowing within her: She had his colors in her blood, now, too. From that evening on, varicolored palettes of light would race through her mind, and she would keep their tones and shades for the rest of her life.

	'Adaline, let's go.'
	
	Getting impatient, Gentiana prodded at her friend. She'd given Ada [i]plenty[r] of time to get out of her little trance, and it was getting late. 'Come on, Adaline, we have to go.' Adaline absentmindedly stumbled away with her, occasionally glancing up, at the ragged moon, blankly watching it find it's path up through the sky."; [1 as a footnote]
	Wait for any key;
	Clear the screen;
	Start Character Creation;
	End Prolog;
	
Character Creation is a Scene. Character Creation Flag is a truth state that varies.
Character Creation begins when Character Creation Flag is true.
Character Creation ends when Character Creation Flag is false.
To start Character Creation: now the Character Creation Flag is true.
To end Character Creation: now the Character Creation Flag is false.

When Character Creation Begins:
	Now the command prompt is "What will your name be?  ";
	After reading a command when collecting names:
		now the player name is the substituted form of "[the player's command]" in title case;
		now the player forename is word number 1 in the player name;
		now the command prompt is "Are you male or female?  ";
		Reject the player's command;
		
After reading a command when the gender of the player is unknown:
	if the player's command includes "[gender]":
		now the command prompt is "> ";
		now the gender of the player is the gender understood;
		if the gender of the player is masculine, now the player is male;
		if the gender of the player is feminine, now the player is female;
		Now the command prompt is "> ";
		Clear the screen;
		Reject the player's command;
		say "You shudder awake. If you were a bit more careful (rather, if the room was spinning even a [i]little[r] bit slower), you might've dodged the doorframe on your way to your porcelain friend. You won't remember why your temple hurts. You begin to get up, but the visceral stack of mistakes you're popping off keep you down. You stagger to your feet, swaying a bit as you try to lock eyes with yourself in the mirror. Your eyes haven't focused yet, and you consider that you might not want to see yourself like this.
	
			Do you look at yourself?  ";
		if the player consents:
			say "[line break][i]Dear lord[r].
			
			It's less sobering than it is [i]alarming[r]. You turn to start the bath, and then look back at the mirror. You're emaciated, haggard, and -
			
			[i]You thrust your face into the running bathwater before you consciously identify what that was in the corner of your mouth.[r]
			
			You resume your frantic cleaning. The esophageal burning subsided a while ago, but you're afraid your nerves have been dissolved by the acid, or have just [i]plainly given up[r]. You look veritably awful.";
		else:
			say "[line break]Good call. You're already on the verge of impending mental collapse; you don't need to feel [i]worse[r]. You avoid the mirror like it's a basilisk until you're overabundantly cleaner.";
		say "You make an earnest attempt to clean up. There's a lot of water and scraping, and it doesn't go well. [if the gender of the player is masculine]You shave a solid half of your face properly, and you're just going to have to deal with the fact that the short hairs around your whorl are going to feel weird every time there's wind[else]You put concealer literally everywhere. You're just going to have to deal with the fact that there are colors on your face today that simply can't be corrected. Long pants are a foregone conclusion. You consider the surfeit of ways that mascara could go horribly wrong, and without a second thought you walk out of the room to your dresser[end if]. Nicer clothes will at least allow you to masquerade as a well-put-together human being.";
		reject the player's command;
		wait for any key;
		clear the screen;
		say "[paragraph break][line break][banner text]";
		move the player to the location;
		[Start Morning;

Morning is a Scene. Morning Flag is a truth state that varies.
Morning begins when Morning Flag is true.
Morning ends when Morning Flag is false.
To start Morning: now the Morning Flag is true.
To end Morning: now the Morning Flag is false.

When Morning begins:
	say "[paragraph break][line break][banner text]";
	move the player to the location;]

The Terrace is a region. Your Quarters, Outside Quarters, Seaside Cliff, Cliff's Edge, Forest Overlook, Outside Dwelling, Interior Dwelling, Road to the Canyon's Stairway, The Town of Harston, The Cablecar Company, Abandoned Amusement Park, and Harold's Utility Store are in The Terrace.

Your Quarters is a room. "[if visited]You return home. [end if]It's a standard-issue dwelling, designed for the unusually harsh conditions of the Terrace. It is made of many alloys of metal, and is joisted by slender titanium trusses. It's defining feature is the central, dome-shaped foyer from which the more traditional, rectangular rooms branch off." 
The door to your quarters is a door. "Your door leads out, and you can see it's bright outside through it's circular window. Curved rails carry it a few degrees around the inside of the dome." It is outside from Your Quarters and inside from Outside Quarters.
The drafting table is in Your Quarters. It is a supporter. "You've been using an old-style drafting table as a desk for as long as you've needed a desk. It's edged with a dented but sturdy aluminum frame. It has a hefty steel pivot, its arc stretching 135° or more. Four triangularly trussed legs extend to spherical rubber feet which match perfectly your dented floor."
Some math papers are on your drafting table. "There are some scattered papers on your desk. You were doing a significant amount of math for an upcoming build of the rover. Coffee stains the edges, but your handwriting is still quite fine, neatly fitting into tiny dot-grid spaces."
The backpack is in Your Quarters. It is the player's holdall. "Your tattered backpack is here. You typically don't leave home without it." The description is "You've had this pack for awhile. It's somewhat old, but it still carries everything you need to go out adventuring."

Outside Quarters is northwest of Seaside Cliff. "You're outside your Quarters, which used to be quite well-kept. You haven't applied the sealant in months, and the wind-facing surface has become pitted and slightly rusty. The rails girding your catwalks look better, but the bluing is getting worn. Behind your house is a small dropoff. About half of your dome hangs over the edge, and there's a nice, shady area inside the supporting rods, with herringbone metal steps leading down and around it."

[Like, one day a friar starts coughing, and it never [italic type]really[roman type] goes away, except, you don't have a bubonic friend, or any friends, and this is only going to be a terminal condition for you because you aren't going to stop....[italic type]Adaline was getting worse... was... it couldn't've been more than a week, right? That's about when she left...[roman font] You were actually taken aback when, about a month ago, Gentiana came back carrying her. She was despondent, she just didn't make that much sense. That is about when this all started, right? You have a hard time remembering. You eat something to get that awful taste out of your mouth. It's a horrible process at first because you can't simply throw it up again, you've got to suffer and keep it down until it digests, at least halfway. It's like stomach bootstrapping. This drawn-out agony you're in, [italic type]boy[roman type]. If she hadn't've left last month, you're pretty sure none of this would have happened to you. It just got to be really bad about a week after she came home like... you don't really know what was wrong with her. Her really odd behaviour started that day, and just like hers, your little nightmare [italic type]never really went away[roman type]. It's too far apart: the dopamine rush is so delayed, it's so far away from the agony that Pavlov really can't help you out. A few of your favorite, magical pills are on the counter, and you take one with your coffee. It isn't depression or pessimism at this point to assume that you're going to die if you don't find her, it's just a matter of realistic expectations. She's been gone for probably, about a week or so, to the best of your memory. You're going to need to be sharp to find her, too. You reflect some more after eating, and the mirror begins to tell you you're doing better than you feel. Colors slowly sneak into the room, getting richer as you light the burner again for some more coffee. You're beginning to wake up. You shower for a long time. It's not leisure, it's just a proportional amount of time, all things considered. The warmth comes alive, and the mirror looks you up and down, and seems to reflect positively on you, now. You've lost a few pounds, your teeth look whiter... The sun is getting warmer and brighter extremely quickly. [italic type]Why is it so warm, there's frost out there![roman type] You're excited. You're going to find Adaline today, and everything will be sunshine and rainbows. You'll grow old together and become rich and famous, which is, at least as it was explained to you, how this works.  [italic type]Oh right, that's what was wrong with her, she didn't seem to understand how life works.[roman type] You've waited way too long, you're not sure where the last month of your life went, but you're going to fix it all today.[end if]"] [Tierra Del Fuego, Patagonia, Argentina]
[They're going faster now. The landscape you tried to draw set you off when you fucked it up. Too dark. Blood on the tracks, the blood of that landscape on my hands, Jane never loved me, I'm inadequate in every way and every comparison to not just other people but almost all other men, to the point that even women whom I would cringe at having to be anywhere near wouldn't even consider me after a first and second glance. I found a joke I told just a moment ago to be so funny... I was on the floor. I'm extremely good at that. Why can't I be extremely good at the only things I want to do? FUCK. It's so jarring to go from melancholy to jubilance that it makes me angry, and then so on. The only times I'm evenhanded are the times between when I'm too fucking sad to function, and too manic to see that all the shit I think I'm so hot with is complete... SHIT. FUCK. I CAN'T FUCKING TELL, and when I do, I can't... deal with it, I'm a failure, I can't recover from the littlest things, I'm fucking pathetic, I have nothing. Perhaps Alicia isn't involved with Stephen, perhaps she'd still smile at me, perhaps I'd have a chance, oh, imagine! How happy that could make me! Overjoyed, isn't she lovely? I've seen love go by my door, never been this close before, never been so easy, or so slow. I've been shooting in the dark too long, when something's not right it's wrong, you're gonna make me lonesome when you go. And she's GONE. Summer's GONE. Alicia was that summer to you. The course became here nor there, but goddamn it, relationships have all been bad... She's gone, leaving with you December. April's gone! You're going to lose this summer if you don't fucking make it. You're inadequate. You spent the vacation trying to accomplish two simple things and you failed both of them. You ate too much and didn't lose a pound, and you didn't do any fucking art. You tried so hard. Have we forgotten how sad you should be? You aren't shit. Aren't these voices, Dave? Aren't these the signs you told yourself to see and stop? No, you want it, don't you. Uh huh, I do. You want it so bad, don't you? Yes I do. It's dopamine, happy or despondently depressed, and you're never really happy, and when you are, it ain't so strong, is it? That's the fun part. You spiral like this, and you're going to go faster and faster every time. Fuck, all you get is the release of dopamine, you know your tears have plenty of the stuff, you're just hemorrhaging happiness, in a way. Get down. Stay down. You are supposed to die like this, just like this, in tears on the floor. 

Destiny loves people like you. You're fun to torture. Is that her, whispering to you? Yes. Good, good to hear. She says she'd really like to see you again. She says she had a great time last night. She says she has a boyfriend and that she doesn't give a FUCK and that nothing you say or do will ever matter to her because the only time when she ever thought of you in that way was three years ago before you permanently fucked it with your stupid fucking voice and your erratic behaviour. Perhaps the next one, you wont know as long, and you can maybe get a little closer to her before she sees what you are. You're a failure, and woe, if it weren't bad enough for you, you're a failure without moves. You aren't smooth, and you're not cool enough to be gritty. Your voice doesn't go up there. It falters. The only thing you want to do, yet again, is put out of your reach. Silver lining / kick in the fucking face, the voice you do have is toneless and prone to muttering and being considered immature at every turn. You don't have nuance there, and you're going to perpetually sound like a teenager who can't find weed or lock his doors when he fucks himself.

So fun. SO fun to torture. Drink some of that vodka, I'd like to make a long speech now. Go ahead, I'll bring some friends, we'll all talk to you. Jane doesn't always talk in turn, your father's screams also tend to crop up while we're all talking, but you'll understand most of it. You'll get the GIST, won't you? Whom else can you speak to? You have no friends! You've been living in a fucking white box, seeing nobody but your parents, who have been trying for so long to beat you into their control. You don't listen to them, but you're not free, now, are you? You're completely stuck and fucked, because they can suppress you from having the highs your little bipolar ass deserve. You don't get to have them, they're cutting off your big erect dick. Remember when that girl sat next to you on the plane? She was cute. Remember when your father asked to be seated there, 'So she could sit next to her sister' in the isle seat right across from her? Fuck him! Now, everytime you see a girl in a white, long-sleeve tee-shirt, you're going to see his hairy arm and thigh. Have fun with that, motherfucker. You need to die to escape us, and you look like you're going to break, oh yes. No more slow death, no more overeating and cigarettes, let's get brash, let's get some rope. Kerosene your thing? There's some. Heights scare you, but do they scare you enough to stop you now? Be brave, heh, be very brave. Chicken? That's a shame. I'll just keep going. All of the women you saw on the island only looked like they were smiling at you. You're still shit, you just felt better. It's a really subtle hallucination, that one. They're smiling at you! The sun is shining! You're tan, you look good! You lost weight! Your arms are bigger, stronger! The fuck they are. You can hardly tell you were there now. You don't remember that night at the bar, but you thought you had a great fucking time, stumbling through your own songs and pissing off the band when you tried to sing harmony. You know you actually did an acceptable job, but the hallucination goes both ways. You did worse than you know you did, insomuch as the feelings go. You're going to get a big ole' accumulation of these horrid memories, and one day, it will finally break you. There's a point, maybe in the near future, when you're just going to snap. You're going to look at everything you've accomplished, see it all as shit (get me not wrong, most of it is) and you're going to do exactly what you want to do at that point, like always, and you're going to die in a very extravagant and painful way. Have fun!

Oh, look at fucking you! The distractions do stave off the crushing horror of your life's mistakes! Good on you! Write a letter, but be careful! Wouldn't want to send it to Jane like last time. You'd somehow get more crushed if she didn't reply to a second one, even though it's her only reasonable recourse, given all you've done. Let me bring you back. You're writing to yourself in a fucking journal, in between lines of a fucking text adventure that you're never going to finish. You don't have the talent or the balls to make anything of all this shit you've written, it's just a comment. All of this will be gone by compilation. Most of what you do is like that. Most of the shit you try so hard to accomplish is completely fucking worthless, and every time you push, and you push so hard, it's completely tangential to the pivot, because you thought you were the pivot, oh hell no, missy, other people are the pivot, and they're using you. You're being manipulated by every bitch who catches your eye and sees an opportunity to fuck you over for money or chores, maybe some dramatic, love-laced romantic facebook messages to make them feel happy between boyfriends, but not you, just the words. Lovely words, though, but fuck off. So fun, very fun to torture. The flask is over there, you know. It's just between your tasteless pants and your fat-enhancing jackets in that right closet. Fuck you, it's not enough, is it? No, no, you need the whiskey too. You're going to fuck up even more. You're going to get fucked up, and you're going to be more sorry than you've ever been sorry, because if they find you, if they see you at any point, they're going to kill you. They will scream at you until your heart gives out and the terror gives in so much that you never recover, and they'll cast you out for your betrayal. You will never succeed without their money, that's all they are to you, money to inherit when they die, and you can't make anything of yourself like this, what makes you think you could succeed with their help? Then you'd be a wealthy failure. It means nothing to you. ]

Seaside Cliff is a room. "The seaside terrace is far enough above the patchy trees and dells to afford a remarkable view of the ocean and sky. A ragged moon dusts some drying marshes to the southwest, and to the west lies a cascade of lavender and mahogany flora, gushing from marble cliffsides.[if unvisited] A serene breeze rolls over the terrace and eddies overtop the northwest trees, which are almost flush with the plateau.[end if]".

The leaflet is here. "A leaflet is held down by a rock, an edge fluttering in the breeze." The description is "The leaflet is quite short, and has a tear along the top edge. It reads '... the most amazing territory ever seen by mortals. No computer should be without one!' At the end is what looks like a serial number, [fl]69105[vl]. Typical."

Cliff's Edge is southeast of Seaside Cliff. "There's enough of a wind coming up the edge of the cliff to lift a small animal. Looking down over the white and vaguely purple chalk, you see an isolated cove, locked on two sides by tall rocks. There is a sand dune in front of a ravine-like opening, which seems to run under the cliffs somewhere to the north."

There are 5 nightshade in Cliff's Edge.
		
Forest Overlook is southwest of Seaside Cliff. "At a gentle angle, the ocean-facing side of the plateau slides down to form a nice, shady spot beneath the trees. From here, the gargantuan arbors string all the way up above the raised rock of the terrace. There are tufts of branches almost within reach at the edge of the cliff.". A round fruit is here. "Down along the cliff's edge, one of the more colorful trees seems to have dropped some round fruits to the canyon's surface." It is edible. The description is "This strange fruit is almost spherical. It's slightly translucent, and it's fuzzy skin seems to opalescently bounce light around inside it. It sloshes about when you move it, and it seems to move unusually slowly."

Outside Dwelling is south of Seaside Cliff. "Halfway to the edge of the plateau is a small, dome-like dwelling, with some paths running between it and a small garden behind it, and another area downhill. It is noisily rusted around the rounded main roof, but the seaside wind has somewhat polished the east hemisphere." A porthole is here. It is a door. The porthole is inside from Outside Dwelling and outside from Interior Dwelling. Understand "door / hatch / entrance" as porthole. [It is locked.] "The front porthole appears to be locked. It is quite sturdy, and there is a sizeable wheel at it's center." The rails are here. They are fixed in place. "The pathways are girded by brass and iron railings, which are sturdily fastened to the herringbone pathways." [Instead of going west, try going inside.]

Interior Dwelling is a room. "The interior of the main room is quite cozy. It is lit dimly, with globes of light forming a lurid image of the inside." The desk is here. It is a supporter. It is fixed in place. "There is a metal-rimmed desk here, with some illegible papers strewn across it's surface." The set of drafting compasses are on the desk. A dirty bed is here. It is a bed. "The bed is unkempt, and has no pillow. It is raised an unusual distance off the floor."

Emily's Note is on the dirty bed. "There is an exceptionally old note here, with extremely fine and flowing writing on it." 
Instead of examining Emily's Note, display the boxed quotation
	"
	
	A solemn thing - it was - I said -
	A Woman - White - to be -
	And wear - if God should count me fit -
	Her blameless mystery -
	
	F 307 (1862) 271".

Road to the Canyon's Stairway is northeast of Seaside Cliff. "By some wonder of igneous intrusion, the northern edge of the Terrace has a set of 6 stair-like stone batholiths, all following the Terrace's ragged edge.With one exception, they even descend in order. An amalgam of small shops and transportation businesses have made themselves right at home on the terrace surface, and a small residential sector spreads down to the first step."

The Town of Harston is north of Road to the Canyon's Stairway. "This little boomtown has dug itself into the hard sandstone surface of the Terrace. Most of the shops are brimming with life, and the stone streets have been worn to the bare rock by thick rubber wheels and the foot traffic of a very busy people. The stores to the east are so crowded that you'd likely be injured if you tried to buy something there, but the west end is quieter. There is a utilities shop to the west, a closed, nondescript shop to the southwest, and a cablecar service to the northwest." The Utility Shop Door is a door. The Utility Shop Door is west of The Town of Harston and east of Harold's Utility Store. It is scenery. "The door is quite thin, considering the sorts of sandstorms that sometimes blow through here, but Harold doesn't seem too concerned."

Harold's Utility Store is a room. "This is a store full of the sorts of things that can keep you alive, or get out of a tight spot. It's a bit cluttered." A man called Harold is here. "A large, round man stands in a cacophony of fresh hiking supplies and tools which decrease in quality with the square of the distance from his admittedly long reach." The indefinite article of Harold is "your local".
Every turn when the player can see Harold:
	if a random chance of 1 in 5 succeeds:
		say "Harold [one of]fidgets with a lantern's filament[or]busies himself with a new trinket[or]coughs a bit, and leans back in his squeaking chair[or]looks up at you for a moment, decides you aren't talking to him right now, and looks back down, muttering something about a soldiering board[or]sits back and reflects on his sea of little, material accomplishments[at random].";

The Cablecar Company is a room. "A large, round atrium opens to a chamber which sends and receives cars from a lower stop. The cars arrive in a wide, off-center slot in the dome, and the loading platform wraps around it."

The Cablecar Door is a door and scenery. The Cablecar Door is northwest of The Town of Harston and outside from The Cablecar Company. "This small business's door is welcoming and unassuming."

Abandoned Amusement Park is a room. "You stalk through the closed amusement park you remember so vividly from your childhood. It was a bustling, busy place, with all shapes and colors of people represented, walking around in what would else be socially unacceptable clothing. Those memories stand strong against the erosion of time, but seeing this place now, so broken as it is... it's quite unsettling.".

The Gallery is down from the Cablecar Company. "holy shit! Learn you a good Haskell!".

Jane Hornsby is a woman. "Jane is sitting here, looking at you sideways.'... marzipan... heh. Marzipanic at the Disco!'"

Emily Dickinson is a woman. 
"A solemn thing - it was - I said -
A Woman - White - to be -
And wear - if God should count me fit -
Her blameless mystery -

[fl]F 307 (1862) 271[vl]"

[S18.29 very interesting, peepholes and traveling boxes / inventory containers]

[Columbus left 39 men, including Luis de Torres, and founded the settlement of La Navidad at Bord de Mer de Limonade, Haiti. 11/39 bodies found, Tainos killed them all. Other sources say there was insubordination within the colonists, which led to their deaths.]


