module SeedsHelper
  WORDS_ARRAY = ["I"]*85 + ["you"]*85+ ["we"]*85 + ["the"]*100 + ["O'"]*35 + ["a"]*85 + %w{ aloha freezer brown orange blue green mauve chocolate nephew bears run jump sing dance yay or you me love eight and a printer corner store volleyball cauliflower bamboozled bazinga bevy bifurcate bilirubin bobolink buccaneer bulgur bumfuzzle canoodle cantankerous carbuncle caterwaul cattywampus cheeky conniption coot didgeridoo dingy doodle doohickey eschew fiddledeedee finagle flanker floozy fungible girdle gobsmacked grog gumption gunky hitherto hoi polloi hornswoggle hullabaloo indubitably janky kahuna katydid kerplunk kinkajou knickers lackadaisical loopy manscape monkey mugwump namby-pamby noggin pantaloons passel persnickety popinjay prestidigitation proctor rapscallion rookery rumpus scootch scuttlebutt shebang Shih Tzu snarky snuffle spelunker spork sprocket squeegee succubus tater tuber tuchis viper waddle walkabout wasabi weasel wenis whatnot wombat wonky zeitgeist Aardvark Abacus Abundance Ache Acupuncture Airbrush Alien Anagram Angle Amazing Ankle Alphabet Antenna Aqua Asphalt Bacon Banana Bangles Banjo Bankrupt Bar Barracuda Basket Beluga Binder Birthday Bisect Blizzard Blunderbuss Boa Bog Bounce Broomstick Brought Bubble Budgie Bug Bug-a-boo Bugger Buff Burst Butter Buzz Cabana Cake Calculator Camera Candle Carnival Carpet Casino Cashew Catfish Ceiling Celery Chalet Chalk Chart Cheddar Chesterfield Chicken Chinchill Chit-Chat Chocolate Chowder Coal Compass Compress Computer Conduct Contents Cookie Copper Corduroy Cow Cracker Crackle Croissant Cube Cupcake Curly Curtain Cushion Cuticle Daffodil Delicious Dictionary Dimple Ding-a-ling Disk Disco Duck Dodo Dolphin Dong Donuts Dork Dracula Duct Tape Effigy Egad Elastic Elephant Encasement Erosion Eyelash Fabulous Fantastic Feather Felafel Fetish Financial Finger Finite Fish Fizzle Fizzy Flame Flash Flavour Flick Flock Flour Flower Foamy Foot Fork Fritter Fudge Fungus Funny Fuse Fusion Fuzzy Garlic Gelatin Gelato Ghetto Glebe Glitter Glossy Groceries Goulashes Guacamole Gumdrop Haberdashery Hamster Happy Highlight Hippopotamus Hobbit Hold Hooligan Hydrant Icicles Idiot Implode Implosion Indeed Issue Itchy Jell-O Jewel Jump Kabob Kasai Kite Kiwi Ketchup Knob Laces Lacy Laughter Laundry Leaflet Legacy Leprechaun Lollypop Lumberjack Macadamia Magenta Magic Magnanimous Mango Margarine Massimo Mechanical Medicine Meh Melon Meow Mesh Metric Microphone Minnow Mitten Mozzarella Muck Mumble Mushy Mustache Nanimo Noodle Nostril Nuggets Oatmeal Oboe Oclock Octopus Odour Ointment Olive Optic Overhead Ox Oxen Pajamas Pancake Pansy Paper Paprika Parmesan Pasta Pattern Pecan Peek-a-boo Pen Pepper Pepperoni Peppermint Perfume Periwinkle Photograph Pie Pierce Pillow Pimple Pineapple Pistachio Plush Polish Pompom Poodle Pop Popsicle Prism Prospector Prosper Pudding Puppet Puzzle Queer Query Radish Rainbow Ribbon Rotate Salami Sandwich Saturday Saturn Saxophone Scissors Scooter Scrabbleship Scrunchie Scuffle Shadow Sickish Silicone Slippery Smash Smooch Smut Snap Snooker Socks Soya Spaghett Sparkle Spatula Spiral Splurge Spoon Sprinkle Square Squiggle Squirrel Statistics Stuffing Sticky Sugar Sunshine Super Swirl Taffy Tangy Tape Tat Teepee Telephone Television Thinkable Tip Tofu Toga Trestle Tulip Turnip Turtle Tusks Ultimate Unicycle Unique Uranus Vegetable Waddle Waffle Wallet Walnut Wagon Window Whatever Whimsical Wobbly Yellow Zap Zebra Zigzag Zip accept ache acknowledge act add admire admit admonish advise adopt affirm afford agree ail alert allege allow allude amuse analyze announce annoy answer apologize appeal appear applaud appreciate approve argue arrange arrest arrive articulate ask assert assure attach attack attempt attend attract auction avoid avow awake  B babble back bake balance balk ban bang bandage bar bare bargain bark barrage barter baste bat bathe battle bawl be beam bear beat become befriend beg begin behave believe bellow belong bend berate besiege bestow bet bid bite bleach bleed bless blind blink blot blow blurt blush boast bob boil bolt bomb book bore borrow bounce bow box brag brake branch brand break breathe breed bring broadcast broil bruise brush bubble build bump burn burnish bury buy buzz  C cajole calculate call camp care carry carve cause caution catch challenge change chant charge chase cheat check cheer chew chide chip choke chomp choose chop claim clap clean clear climb clip close coach coil collect color comb come comfort command comment communicate compare compete complain complete concede concentrate concern conclude concur confess confide confirm connect consent consider consist contain contend continue cook copy correct cost cough count counter cover covet crack crash crave crawl crochet cross criticize croak cross-examine crowd crush cry cure curl curse curve cut cycle  D dam damage dance dare deal debate decay deceive decide decipher declare decorate delay delight deliver demand deny depend describe desert deserve desire deter develop dial dictate die dig digress direct disclose dislike dive divide divorce divulge do dock dole dote double doubt drag drain draw dream dress drip drill drink drive drone drop drown dry dupe dump dust dye  E earn eat echo edit educate elope embarrass emigrate emit emphasize employ empty enchant encode encourage end enjoin enjoy enter entertain enunciate envy equivocate escape evacuate evaporate exaggerate examine excite exclaim excuse exercise exist expand expect expel exhort explain explode explore extend extoll  F face fade fail fall falter fasten favor fax fear feed feel fence fetch fight file fill film find fire fish fit fix flap flash flee float flood floss flow flower fly fold follow fool force foretell forget forgive form found frame freeze fret frighten fry fume  G garden gasp gather gaze gel get gild give glide glue gnaw go grab grate grease greet grill grin grip groan grow growl grumble grunt guarantee guard guess guide gurgle gush  H hail hammer hand handle hang happen harass harm harness hate haunt have head heal heap hear heat help hide highlight hijack hinder hint hiss hit hold hook hoot hop hope hover howl hug hum hunt hurry hurt  I ice identify ignore imagine immigrate imply implore impress improve include increase infect inflate influence inform infuse inject injure inquire insist inspect inspire instruct intend interest interfere interject interrupt introduce invent invest invite irritate iron itch  J jab jabber jail jam jeer jest jog join joke jolt judge juggle jump  K keep kick kill kiss kneel knit knock knot know  L label lament land last laugh lay lead lean learn leave lecture lend let level license lick lie lift light lighten like list listen live load loan lock long look loosen lose love lower  M mail maintain make man manage mar march mark marry marvel mate matter mean measure meet melt memorize mend mention merge milk mine miss mix moan moor mourn molt move mow mug multiply mumble murder mutter  N nag nail name nap need nest nod note notice number  O obey object observe obtain occur offend offer ogle oil omit open operate order overflow overrun owe own  P pack pad paddle paint pant park part pass paste pat pause pay peck pedal peel peep peer peg pelt perform permit pester pet phone pick pinch pine place plan plant play plead please pledge plow plug point poke polish ponder pop possess post postulate pour practice pray preach precede predict prefer prepare present preserve press pretend prevent prick print proceed proclaim produce profess program promise propose protect protest provide pry pull pump punch puncture punish push put  Q question quilt quit quiz quote  R race radiate rain raise rant rain rate rave reach realize read rebuff recall receive recite recognize recommend record reduce reflect refuse regret reign reiterate reject rejoice relate relax release rely remain remember remind remove repair repeat replace reply report reprimand reproduce request rescue retire retort return reveal reverse rhyme ride ring rinse rise risk roar rob rock roll rot row rub ruin rule run rush  S sack sail satisfy save savor saw say scare scatter scoff scold scoot scorch scrape scratch scream screech screw scribble seal search see sell send sense separate serve set settle sever sew shade shampoo share shave shelter shift shiver shock shoot shop shout show shriek shrug shut sigh sign signal sin sing singe sip sit skate skateboard sketch ski skip slap sleep slice slide slip slow smash smell smile smoke snap snarl snatch sneak sneer sneeze snicker sniff snore snort snoop snooze snow soak sob soothe sound sow span spare spark sparkle speak speculate spell spend spill spin spoil spot spray sprout sputter squash squeeze stab stain stammer stamp stand star stare start stash state stay steer step stipulate stir stitch stop store strap storm stow strengthen stress stretch strip stroke stuff stutter stray strum strut stun stunt submerge succeed suffer suggest suit supply support suppose surmise surprise surround suspect suspend sway swear swim swing switch swoop sympathize  T talk take tame tap taste taunt teach tear tease telephone tell tempt terrify test testify thank thaw theorize think threaten throw thunder tick tickle tie time tip tire toast toss touch tour tow trace track trade train translate transport trap travel treat tremble trick trickle trim trip trot trouble trust trounce try tug tumble turn twist type  U understand undress unfasten unite unlock unpack uphold upset upstage urge untie use usurp utter  V vacuum value vanish vanquish venture visit voice volunteer vote vouch  W wail wait wake walk wallow wander want warm warn wash waste watch water wave waver wear weave wed weigh welcome whimper whine whip whirl whisper whistle win wink wipe wish wobble wonder work worry wrap wreck wrestle wriggle write writhe  X x-ray  Y yawn yell yelp yield yodel  Z zip zoom}

  def make_lyrics(opts)
    num_verses      = opts[:verses]           || 4
    lines_per_verse = opts[:lines_per_verse]  || 2 + rand(6)
    words_per_line  = opts[:words_per_line]   || 2 + rand(8)
    lyrics          = ""

    if num_verses.is_a?(String) && num_verses[0] == "~"
      num_verses = num_verses[1..-1].to_i
      num_verses = num_verses/2 + rand(num_verses)
    else
      num_verses = num_verses.to_i
    end

    num_verses.times { lyrics << construct_a_verse(lines_per_verse, words_per_line) }

    lyrics.strip
  end

  def construct_a_verse(lines_per_verse, words_per_line)
    verse = ""
    lines_per_verse.times do
      words_per_line.times { verse << "#{WORDS_ARRAY.sample} " }
      verse << "\n"
    end

    verse << "\n"
  end

  def make_title
    num_words = 1 + rand(4)
    title = ""
    num_words.times { title << "#{WORDS_ARRAY.sample} "}

    title.strip
  end
end
