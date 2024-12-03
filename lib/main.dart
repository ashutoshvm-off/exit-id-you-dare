import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Exit_If_You_Can());
}

// ignore: camel_case_types
class Exit_If_You_Can extends StatelessWidget {
  const Exit_If_You_Can({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of random quotes
  final List<String> quotes = [
    "The only limit to our realization of tomorrow is our doubts of today. - Franklin D. Roosevelt",
    "Success is not the key to happiness. Happiness is the key to success. - Albert Schweitzer",
    "The best way to predict the future is to create it. - Abraham Lincoln",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "In the middle of every difficulty lies o BHpportunity. - Albert Einstein",
    "Do not wait for leaders; do it alone, person to person. - Mother Teresa",
    "It always seems impossible until it’s done. - Nelson Mandela",
    "The journey of a thousand miles begins with one step. - Lao Tzu",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "You miss 100% of the shots you don't take. - Wayne Gretzky",
    "'To live is the rarest thing in the world. Most people exist, that is all.' – Oscar Wilde",
    "'That it will never come again is what makes life so sweet.' – Emily Dickinson",
    "'It is never too late to be what you might have been.' – George Eliot",
    "'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.' – Ralph Waldo Emerson",
    "'Pain is inevitable. Suffering is optional.' – Haruki Murakami",
    "'All the world's a stage, and all the men and women merely players.' – William Shakespeare",
    "'Be kind, for everyone you meet is fighting a hard battle.' – Plato",
    "'Unable are the loved to die for love is immortality.' – Emily Dickinson",
    "'Let me live, love, and say it well in good sentences.' – Sylvia Plath",
    "'Don't let your happiness depend on something you may lose.' – C.S. Lewis",
    "'We are all broken, that's how the light gets in.' – Ernest Hemingway",
    "'Appreciation is a wonderful thing. It makes what is excellent in others belong to us as well.' – Voltaire",
    "'Life is tough my darling, but so are you.' – Stephanie Bennett Henry",
    "'Self-awareness and self-love matter. Who we are is how we lead.' – Brene Brown",
    "'Amateurs sit and wait for inspiration, the rest of us just get up and go to work.' – Stephen King",
    "'Get it down. Take chances. It may be bad, but it's the only way you can do anything really good.' – William Faulkner",
    "'As a writer, you should not judge, you should understand.' – Ernest Hemingway",
    "'To produce a mighty book, you must choose a mighty theme.' – Herman Melville",
    "'Ideas are like rabbits. You get a couple and learn how to handle them, and pretty soon you have a dozen.' – John Steinbeck",
    "'Sometimes, you read a book and it fills you with this weird evangelical zeal, and you become convinced that the shattered world will never be put back together unless and until all living humans read the book.' – John Green",
    "'The Six Golden Rules of Writing: Read, read, read, and write, write, write.' – Ernest Gaines",
    "'As for ‘Write what you know,' I was regularly told this as a beginner. I think it's a very good rule and have always obeyed it. I write about imaginary countries, alien societies on other planets, dragons, wizards, the Napa Valley in 22002. I know these things. I know them better than anybody else possibly could, so it's my duty to testify about them.' – Ursula K. Le Guin",
    "'You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.' – Annie Proulx",
    "'Find out the reason that commands you to write; see whether it has spread its roots into the very depth of your heart; confess to yourself you would have to die if you were forbidden to write.' – Rainer Maria Rilke",
    "'The purpose of a writer is to keep civilization from destroying itself.' – Albert Camus",
    "'A writer never has a vacation. For a writer life consists of either writing or thinking about writing.' – Eugene Ionesco",
    "'Read, read, read. Read everything – trash, classics, good and bad, and see how they do it. Just like a carpenter who works as an apprentice and studies the master. Read! You'll absorb it. Then write. If it's good, you'll find out. If it's not, throw it out of the window.' – William Faulkner",
    "'A good writer possesses not only his own spirit but also the spirit of his friends.' – Friedrich Nietzsche",
    "'Your writing voice is the deepest possible reflection of who you are. The job of your voice is not to seduce or flatter or make well-shaped sentences. In your voice, your readers should be able to hear the contents of your mind, your heart, your soul.' – Meg Rosoff",
    "'I am not at all in a humour for writing; I must write on until I am.' – Jane Austen",
    "'You don't start out writing good stuff. You start out writing crap and thinking it's good stuff, and then gradually you get better at it. That's why I say one of the most valuable traits is persistence.' – Octavia E. Butler",
    "'You can always edit a bad page. You can't edit a blank page.' – Jodi Picoult",
    "'Do not hoard what seems good for a later place in the book, or for another book; give it, give it all, give it now.' – Annie Dillard",
    "'If there's a book that you want to read, but it hasn't been written yet, then you must write it.' – Toni Morrison",
    "'Tears are words that need to be written.' – Paulo Coelho",
    "'You cannot find peace by avoiding life' – Virginia Woolf",
    "'The strongest principle of growth lies in the human choice' – George Eliot",
    "'Focus more on your desire than on your doubt, and the dream will take care of itself.' – Mark Twain",
    "'We have to continually be jumping off cliffs and developing our wings on the way down.' – Kurt Vonnegut",
    "'I hope that in this year to come, you make mistakes. Because if you are making mistakes, then you are making new things, trying new things, learning, living, pushing yourself, changing yourself, changing your world. You're doing things you've never done before, and more importantly, you're doing something.' – Neil Gaiman",
    "'Don't bend; don't water it down; don't try to make it logical; don't edit your own soul according to the fashion. Rather, follow your most intense obsessions mercilessly.' – Franz Kafka",
    "'Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.' – Mark Twain",
    "'Maybe it's not about having a beautiful day, but about finding beautiful moments. Maybe a whole day is just too much to ask. I could choose to believe that in every day, in all things, no matter how dark and ugly, there are shards of beauty if I look for them.' – Anna White",
    "'Trust our heart if the seas catch fire, live by love though the stars walk backwards.' – E. E. Cummings",
    "'One day I will find the right words, and they will be simple.' – Jack Kerouac",
    "'I can be changed by what happens to me. But I refuse to be reduced by it.' – Maya Angelou",
    "'The most common way people give up their power is by thinking they don't have any.' – Alice Walker",
    "'I want to taste and glory in each day, and never be afraid to experience pain.' – Sylvia Plath",
    "'If I waited for perfection, I would never write a word.' – Margaret Atwood",
    "'How wonderful it is that nobody need wait a single moment before starting to improve the world.' – Anne Frank",
    "'We are what we repeatedly do. Excellence, then, is not an act, but a habit.' – Aristotle",
  ];

  // List of random messages for the dialog
  final List<String> messages = [
    "You really want to leave? What's the rush?",
    "Are you sure? Maybe you just need a coffee break?",
    "I know the app is great, but you can always come back!",
    "Leaving so soon? There's so much more fun ahead!",
    "Hold on! I'm sure there's a better reason to leave than this!",
    "Are you sure you want to quit? You haven't explored everything yet!",
    "We will miss you if you leave",
    "If you leave you are not gonna feel better",
    "we miss you if you leave",
    "You cant exit this app if are not ok.",
    "You are trapped by your friend",
    "Ask your friend if you wanna exit",
    "Read some quates and enjoy your life",
    "Be real and enjoy your life, because its just one",
    "Talk to your mind makes you calm it down",
    "Happy Aprils fool if you have received it April",
    "Get your snacks and juice and create your life",
    "Be happy, stay happy and have a smile",
    "smiling makes you live longer",
    "A smile keeps your enemies away",
    "Even yoga makes you laugh to maintain your health",
    "Inhalle more oxygen and make a loud screem",
    "Do live and enjoy and get more energy",
  ];

  String currentQuote = "";
  double opacity = 1.0; // Initial opacity for the fade effect
  late Timer _quoteTimer;

  @override
  void initState() {
    super.initState();
    currentQuote = getRandomQuote();
    _startQuoteChangeTimer();
  }

  @override
  void dispose() {
    _quoteTimer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  // Randomly select a quote
  String getRandomQuote() {
    final random = Random();
    return quotes[random.nextInt(quotes.length)];
  }

  // Randomly select a message for the dialog
  String getRandomMessage() {
    final random = Random();
    return messages[random.nextInt(messages.length)];
  }

  // Method that handles the dialog when the user tries to exit
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResponse = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Are you sure?🤷"),
        content: Text(getRandomMessage()), // Random message
        actions: <Widget>[
          TextButton(
            child: const Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop(true); // Exit
            },
          ),
          TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.of(context).pop(false); // Stay in app
            },
          ),
        ],
      ),
    );

    if (exitResponse == true) {
      _keepAskingQuestions(context);
      return false; // Prevent exit
    }
    return false; // Stay in the app
  }

  // Function to repeatedly ask funny questions
  void _keepAskingQuestions(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("You good?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... I guess?"),
              onPressed: () {
                _hi(context);
              },
            ),
            TextButton(
              child: const Text("No, i am not!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void _hi(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("did you smile"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... I guess?"),
              onPressed: () {
                _travel(context);
              },
            ),
            TextButton(
              child: const Text("No, i am not smiling!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void _travel(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Do you like to travel?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... I guess?"),
              onPressed: () {
                _askmore(context);
              },
            ),
            TextButton(
              child: const Text("No, i dont!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void _askmore(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Are you really sure?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... I guess?"),
              onPressed: () {
                _headache(context);
              },
            ),
            TextButton(
              child: const Text("No, I'll stay!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void _headache(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("You really ok?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... I guess?"),
              onPressed: () {
                __keepAskingQuestions(context);
              },
            ),
            TextButton(
              child: const Text("No, i'am not!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void __keepAskingQuestions(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Do you wanna leave me?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes... get lost"),
              onPressed: () {
                __getlost(context);
              },
            ),
            TextButton(
              child: const Text("No, I'll stay with you..."),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void __getlost(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Do you think you can leave?"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes, i can"),
              onPressed: () {
                __gettogether(context);
              },
            ),
            TextButton(
              child: const Text("No, i wont"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  void __gettogether(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("do you really think you can leave"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Yes, i can"),
              onPressed: () {
                _askEvenFunnierQuestions(context);
              },
            ),
            TextButton(
              child: const Text("No, i wont"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        ),
      );
    });
  }

  // Function to continue the chain of funny questions
  void _askEvenFunnierQuestions(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Wait! Please don't leave!"),
          content: Text(getRandomMessage()), // Random message
          actions: <Widget>[
            TextButton(
              child: const Text("Fine, I'll stay!"),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
            TextButton(
              child: const Text("Okay, Okay... Leave..."),
              onPressed: () {
                Navigator.of(context).pop(true); // Exit
              },
            ),
          ],
        ),
      );
    });
  }

  // Start the timer to change the quote every 10 seconds
  void _startQuoteChangeTimer() {
    _quoteTimer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        opacity = 0.0; // Fade out
      });

      // Wait for the fade out to complete, then change the quote
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          currentQuote = getRandomQuote(); // Change quote
          opacity = 1.0; // Fade in
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Random Quotes and Funny Exit Prevention')),
      body: WillPopScope(
        onWillPop: () async {
          return await _onWillPop(context); // Handle exit attempt
        },
        child: Center(
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 500), // Fade duration
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                currentQuote, // Display current quote
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18, // Font size for mobile
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
