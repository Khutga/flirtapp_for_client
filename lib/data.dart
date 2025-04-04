const data = [
  {
    "id": 1,
    "userName": "taylor",
    "fullName": "Taylor",
    "gender": "female",
    "age": 22,
    "profilePic": "assets/images/taylor_pfp.png",
    "isPremium": false,
    "messages": [
      {
        "id": 1,
        "message":
            "Hey there! I couldn't help but be drawn to your profile. How's it going?",
        "role": "user",
        "options": []
      },
      {
        "id": 2,
        "message": "Hi",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 3,
        "message":
            "So, what are your interests? I see you're into hiking. I love the outdoors too. Have you been on any great hikes lately?",
        "role": "user",
        "options": [],
      },
      {
        "id": 4,
        "message": "Sometimes. Not that often though.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 5,
        "message":
            "That's cool. I recently did a hike up in the mountains, and the view was absolutely breathtaking. Have you been to that trail before?",
        "role": "user",
        "options": [],
      },
      {
        "id": 6,
        "message": "No. I spend most of my time on social media.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 7,
        "message":
            "Oh, okay. Well, maybe we could go hiking together sometime. What do you think?",
        "role": "user",
        "options": [],
      },
      {
        "id": 8,
        "message": "Maybe. I doubt it though.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 9,
        "message": "Do you have any favorite hiking spots around here?",
        "role": "user",
        "options": [],
      },
      {
        "id": 10,
        "message": "Not really.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 11,
        "message": "Darling, do you think you're worthy of my attention?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message": "Absolutely! I'm the most amazing man you'll ever meet",
            "status": false,
            "description":
                "When a women asks questions like this it's best to shrug them off and see it as the red flag that it is. Never chase in this fashion just to get approval.",
          },
          {
            "role": "user",
            "message":
                "Of course not, no one could ever match your magnificence",
            "status": false,
            "description":
                "Compliments like this put you in the friend / simp zone. You're feeding her ego and gain nothing in return.",
          },
          {
            "role": "user",
            "message":
                "What makes you think you're worthy of my time and resources?",
            "status": true,
            "description":
                "Correct answer. When a women asks a goofy question like this it's best to throw it back in her face and see what kind of response you get. Could be playful banter or it could be a red flag and a great reason to move on from the conversation.",
          },
          {
            "role": "user",
            "message": "Who cares? It's an honor just to be in your presence",
            "status": false,
            "description":
                "Compliments like this put you in the friend / simp zone. You're feeding her ego and gain nothing in return.",
          },
        ],
      },
      {
        "id": 12,
        "message":
            "Can we change the subject? What do you enjoy doing in your free time?",
        "role": "user",
        "options": [],
      },
      {
        "id": 13,
        "message": "Netflix",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 14,
        "message": "Ah, a Netflix enthusiast! Any favorite shows or movies?",
        "role": "user",
        "options": [],
      },
      {
        "id": 15,
        "message": "Not really. I watch a bit of everything",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 16,
        "message":
            "Well, I'm always up for discovering new shows or movies. Maybe we could watch something together sometime?",
        "role": "user",
        "options": [],
      },
      {
        "id": 17,
        "message": "Maybe. Not sure if I have the time.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 18,
        "message": "Okay, tell me, what's your idea of a perfect date?",
        "role": "user",
        "options": [],
      },
      {
        "id": 19,
        "message": "I like going to fancy restaurants and clubs.",
        "role": "flirtUser",
        "options": [],
        "time": "Several days later, Man receives a message from woman.",
      },
      {
        "id": 20,
        "message": "Hey.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 21,
        "message":
            "Oh, hi there! Didn't expect to hear from you again. What's up?",
        "role": "user",
        "options": [],
      },
      {
        "id": 22,
        "message": "Not much. Bored.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 23,
        "message":
            "Well, it's good to hear from you nonetheless. Is there something you wanted to talk about?",
        "role": "user",
        "options": [],
      },
      {
        "id": 24,
        "message": "Eh I was just sitting around looking through social media.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 25,
        "message":
            "Okay, you're being a bit mysterious here. What's on your mind?",
        "role": "user",
        "options": [],
      },
      {
        "id": 26,
        "message": "I've been thinking, maybe we could meet up sometime.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 27,
        "message":
            "Really? That's a surprise! I thought you weren't too interested in our conversation before. But hey, I'm definitely up for meeting in person. Any particular place or time in mind?",
        "role": "user",
        "options": [],
      },
      {
        "id": 28,
        "message": "I'm busy this week. Maybe next week.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 29,
        "message":
            "Great, I'm really looking forward to our date next week. I'll make sure it's a pleasant surprise.",
        "role": "user",
        "options": [],
      },
      {
        "id": 30,
        "message":
            "Tell me, which of my stunning qualities do you find most irresistible?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "Your the epitome of beauty and grace, and I can't help but worship you",
            "status": false,
            "description":
                "Never feed a women's ego like this as it puts her on a pedestal and create a future of toxic abuse.",
          },
          {
            "role": "user",
            "message":
                "Your intelligence is far superior to mine, and it's awe-inspiring",
            "status": false,
            "description":
                "Never put yourself down to make a women feel good, it's a destructive and toxic pattern that only grows over time.",
          },
          {
            "role": "user",
            "message":
                "Your mere presence makes me realize how insignificant and unworthy I am",
            "status": false,
            "description":
                "Never put yourself down to make a women feel good, it's a destructive and toxic pattern that only grows over time.",
          },
          {
            "role": "user",
            "message":
                "Thats a very strange question to ask, you seem a little self absorbed",
            "status": true,
            "description":
                "Correct answer. Questions like this are compliment fishing and trying to get you to put yourself down to get her attention and validation. It's manipulative and narcissistic. Beware of the red flags.",
          },
        ],
        "time":
            "Several days pass, and Man messages Woman to confirm their date."
      },
      {
        "id": 31,
        "message":
            "Hey there, just wanted to check in about our plans for next week. Are you still up for it?",
        "role": "user",
        "options": [],
      },
      {
        "id": 32,
        "message": "Yeah, I guess.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 33,
        "message": "Is there a specific day or time that works best for you?",
        "role": "user",
        "options": [],
      },
      {
        "id": 34,
        "message": "I'll let you know.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 35,
        "message":
            "Okay, just keep me posted. I want to make sure we have a good time.",
        "role": "user",
        "options": [],
        "time":
            "A few more days go by, and Man is growing a bit frustrated with the lack of enthusiasm."
      },
      {
        "id": 36,
        "message":
            "Hey, I've been trying to be patient here, but I'm getting mixed signals. Are you actually interested in going on this date?",
        "role": "user",
        "options": [],
      },
      {
        "id": 37,
        "message": "Why are you so needy? Chill out.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 38,
        "message":
            "I'm sorry if I'm coming across as needy; I just want to make sure we're both on the same page. If you're not interested, it's perfectly fine to say so.",
        "role": "user",
        "options": [],
      },
      {
        "id": 39,
        "message": "Whatever. I said we can go, didn't I?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 40,
        "message":
            "Yes, you did. I'm just trying to plan something enjoyable for both of us. Let's keep it civil, okay?",
        "role": "user",
        "options": [],
      },
      {
        "id": 41,
        "message":
            "Don't tell me what to do. If you're so bothered, just cancel.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 42,
        "message":
            "I'm sorry I didn't mean to offend you. Do you have a question for me?",
        "role": "user",
        "options": [],
      },
      {
        "id": 43,
        "message": "What's your idea of the perfect date?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "A romantic dinner at a fancy restaurant followed by a moonlit walk on the beach.",
            "status": false,
            "description":
                "Expensive first dates are never a good idea, especially with a women that seems to be sending mixed signals.",
          },
          {
            "role": "user",
            "message":
                "Exploring a new art gallery and discussing our favorite pieces, then grabbing a coffee at a cozy cafe.",
            "status": true,
            "description":
                "Correct answer. Going to an art gallery or a simple coffee is a great first date that allows you to get to know the other person without investing too much time or money.",
          },
          {
            "role": "user",
            "message":
                "Going on a thrilling adventure like hiking or zip-lining, followed by a picnic in a scenic spot.",
            "status": false,
            "description":
                "A high energy activity for a first date might not always be  the best choice. It can get expensive and you might realize within 10-15 minutes that there is no connection and she's not the one. Better to keep first dates simple and short.",
          },
          {
            "role": "user",
            "message":
                "Watching a classic movie at home, ordering our favorite takeout, and cuddling on the couch.",
            "status": false,
            "description":
                "Inviting someone like this to your house on a first date is never a good idea. You don't know what to expect and might realize she's got some serious issues or won't leave. Then you'll be stuck trying to figure out how to get rid of her and no real options. Better to go somewhere public and cheap.",
          },
        ],
      },
      {
        "id": 44,
        "message":
            "Would you like to hear about some of my hobbies I've been working on?",
        "role": "user",
        "options": [],
      },
      {
        "id": 45,
        "message":
            "Oh, I don't really care about your hobbies. I just hope you have a fat wallet to spoil me with. I'm tired of losers who can't provide.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 46,
        "message":
            "Um, okay. I believe in treating someone well, but I also value genuine connection. Money isn't everything.",
        "role": "user",
        "options": [],
      },
      {
        "id": 45,
        "message":
            "Oh please, spare me your pathetic attempts at being deep. All I care about is what you can buy me. Can you even afford to take me out to nice places?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 46,
        "message":
            "Look, if you're only interested in material things, then I'm not the right person for you. I'm looking for a meaningful connection, not a transactional relationship.",
        "role": "user",
        "options": [],
      },
      {
        "id": 47,
        "message":
            "Meaningful connection? Ha! That's just a fancy way of saying you're too broke to afford my high standards. You're nothing but a substitute for the real deal.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 48,
        "message":
            "*sigh* Why do I keep attracting women like you? Is it because I'm too nice?",
        "role": "user",
        "options": [],
      },
      {
        "id": 49,
        "message":
            "Oh please, don't flatter yourself. It's not about you being nice. It's about you not being able to provide for me like I deserve.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 50,
        "message":
            "Which of the following flaws do you think makes you the most repulsive?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message": "My hideous face and lack of charm",
            "status": false,
            "description":
                "Never put yourself down to get validation from women. This should be a red flag and a clear sign of toxic or narcissistic behavior. Always stand up for yourself and never let someone treat you like this.",
          },
          {
            "role": "user",
            "message":
                "If you keep talking to me like this I'm going to block you",
            "status": true,
            "description":
                "Correct answer. Having boundries and respect for yourself is the first key in attracting a quality partner. Never let someone beat you down with insults just for their validation or ego.",
          },
          {
            "role": "user",
            "message": "My complete lack of talent or ambition",
            "status": false,
            "description":
                "Never put yourself down to get validation from women. This should be a red flag and a clear sign of toxic or narcissistic behavior. Always stand up for yourself and never let someone treat you like this.",
          },
          {
            "role": "user",
            "message": "My laughable attempts at being a man",
            "status": false,
            "description":
                "Never put yourself down to get validation from women. This should be a red flag and a clear sign of toxic or narcissistic behavior. Always stand up for yourself and never let someone treat you like this.",
          },
        ],
      },
      {
        "id": 51,
        "message":
            "I'm not sure how to repsond after that, I believe in building a relationship based on mutual respect, not financial status. Money can't buy happiness.",
        "role": "user",
        "options": [],
      },
      {
        "id": 52,
        "message":
            "Money might not buy happiness, but it certainly makes life more enjoyable. And I refuse to settle for anything less.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 53,
        "message":
            "Well, I refuse to be treated as nothing more than a walking wallet. I deserve someone who appreciates me for who I am, not what I can give them.",
        "role": "user",
        "options": [],
      },
      {
        "id": 54,
        "message":
            "Good luck finding someone who can tolerate your mediocrity. You'll see that money talks, and you'll be left with nothing.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 55,
        "message":
            "I'd rather have nothing than be with someone who sees me as nothing more than a source of financial security. I deserve better.",
        "role": "user",
        "options": [],
      },
      {
        "id": 56,
        "message":
            "Keep telling yourself that, loser. I'll be out there living my best life with someone who can actually provide for me.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 57,
        "message":
            "You know what? I've had enough of your toxic attitude. I deserve respect and kindness, not this constant belittlement.",
        "role": "user",
        "options": [],
      },
      {
        "id": 58,
        "message":
            "Respect? Kindness? Please, spare me your righteous speech. You're nothing more than a weakling who can't handle a strong, independent woman like me.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 59,
        "message":
            "It's not about being weak or strong. It's about basic human decency. I refuse to be treated as a doormat.",
        "role": "user",
        "options": [],
      },
      {
        "id": 60,
        "message":
            "Well, good luck finding someone who will put up with your pathetic need for respect. I'm sure they're out there somewhere, in the land of fantasy.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 61,
        "message":
            "I'd rather be alone than be with someone who only sees me as a punching bag for their insecurities. I deserve better than this.",
        "role": "user",
        "options": [],
      },
      {
        "id": 62,
        "message":
            "Keep telling yourself that, loser. The truth is, you'll never find anyone who can handle all this fabulousness.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 63,
        "message":
            "You know what? I've had enough of your constant negativity and abuse. I refuse to let you bring me down any longer.",
        "role": "user",
        "options": [],
      },
      {
        "id": 64,
        "message":
            "Oh, please! Like you have any self-worth to begin with. You're just a replaceable cog in the machine of my dating conquests.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 65,
        "message":
            "Replaceable? Is that all I am to you? Just a disposable item to be used and discarded? I deserve to be treated with dignity and respect.",
        "role": "user",
        "options": [],
      },
      {
        "id": 66,
        "message":
            "Respect? Ha! You haven't earned an ounce of respect from me. You're nothing but a pathetic excuse for a man.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 67,
        "message":
            "And you're nothing but a toxic, manipulative individual who thrives on tearing others down. I won't allow you to poison my life any longer.",
        "role": "user",
        "options": [],
      },
      {
        "id": 68,
        "message":
            "Poison? That's rich coming from someone as insignificant as you. You'll never find anyone who can handle your pathetic existence.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 69,
        "message":
            "Can we please change the subject? This conversation is getting toxic.",
        "role": "user",
        "options": [],
      },
      {
        "id": 70,
        "message":
            "Which form of abuse do you prefer from a perfect woman like me?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message": "Physical beatings to remind me of my insignificance",
            "status": false,
            "description":
                "Physical abuse in a relationship should never be tolerated. Don't allow yourself to be with a partner that uses violence to solve problems.",
          },
          {
            "role": "user",
            "message": "Emotional manipulation to crush my spirit",
            "status": false,
            "description":
                "Manipulation can absolutely destroy a mans spirit and soul, never allow a women to use toxic behavior to control you as it'll leave you empty and shallow.",
          },
          {
            "role": "user",
            "message": "I deserve happiness and genuine connection",
            "status": true,
            "description":
                "Correct answer. Everyone deserves this in a real relationship and if you're not getting this the relationship itself has no value at all. It's best to remove yourself as quickly as possible and find someone that truly appretiates you.",
          },
          {
            "role": "user",
            "message":
                "Verbal insults to remind you of how pathetic I truly am",
            "status": false,
            "description":
                "Narcissistic abuse is a very real issue in relationships. When these red flags start popping up it's best to remove yourself from the situation and look for healthier relationships.",
          },
        ],
      },
      {
        "id": 71,
        "message":
            "I deserve happiness and genuine connection, I have a big heart and treat others with respect, unlike you.",
        "role": "user",
        "options": [],
      },
      {
        "id": 72,
        "message":
            "Happiness? Connection? Those are just fairy tales for weaklings like you. You'll be crawling back to me in no time.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 73,
        "message":
            "You know what? I've had enough of your toxic behavior. I refuse to subject myself to your constant abuse any longer.",
        "role": "user",
        "options": [],
      },
      {
        "id": 74,
        "message":
            "Toxic? Abuse? Please, you're just too weak to handle a woman like me. You'll never find anyone else who can put up with your pathetic existence.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 75,
        "message":
            "Weak? No, I'm strong enough to recognize when someone is treating me poorly. I deserve someone who uplifts me, not tears me down.",
        "role": "user",
        "options": [],
      },
      {
        "id": 76,
        "message":
            "Uplifts you? Ha! You're nothing more than a stepping stone for me. I'll discard you as soon as I find someone better.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 77,
        "message":
            "I refuse to be someone's stepping stone. I deserve to be with someone who values me and treats me with kindness and respect.",
        "role": "user",
        "options": [],
      },
      {
        "id": 78,
        "message":
            "Kindness? Respect? Those are just fairy tales. In the real world, it's all about what you can give me.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 79,
        "message":
            "Well, I'm done living in your twisted reality. I'm walking away from this toxic relationship and finding someone who appreciates me.",
        "role": "user",
        "options": [],
      },
      {
        "id": 80,
        "message":
            "Good luck finding someone who can tolerate your pathetic need for love and respect. You'll be alone forever.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 81,
        "message":
            "I may be sensitive, but that doesn't mean I deserve to be treated like this. I deserve someone who uplifts me, not someone who tears me down.",
        "role": "user",
        "options": [],
      },
      {
        "id": 82,
        "message":
            "Uplifts you? Ha! You're nothing more than a source of amusement for me. I'll discard you as soon as I find someone more entertaining.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 83,
        "message":
            "I refuse to be someone's punching bag. I deserve to be with someone who respects and cherishes me for who I am.",
        "role": "user",
        "options": [],
      },
      {
        "id": 84,
        "message":
            "Respect? Cherish? Those are just empty words. In the end, it's all about what you can do for me. I don't care anyway, I have boyfriend, I was just on Tinder because I was bored. Bye!",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 85,
        "message": "Wow.",
        "role": "user",
        "description":
            "Taylor is obviously a terrible choice. She sent mixed signals, a narcissistic personality, and down right abusive many times throughout the conversation. With women like this it's best to block and run away as fast as you can!",
        "options": [],
      },
    ]
  },
  {
    "id": 2,
    "userName": "jessica",
    "fullName": "Jessica",
    "gender": "female",
    "age": 28,
    "profilePic": "assets/images/jessica_pfp.png",
    "isPremium": true,
    "messages": [
      {"id": 1, "message": "Hey there! 😊", "role": "user", "options": []},
      {
        "id": 2,
        "message": "Hi. How's your day going?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "Great, just took my dog for a walk, make a cup of coffe and it's off to work.",
            "status": true,
            "description":
                "Correct answer. Showing you have pets and you take care of them while hinting you have a good work ethic.",
          },
          {
            "role": "user",
            "message":
                "It's been a rough few weeks, I can't seem to get ahead.",
            "status": false,
            "description":
                "If you had a bad day, talk to your close friends, not the women you're trying to chat up. The woman you are trying to chat up is not your mother and your problems are not her problems.",
          },
          {
            "role": "user",
            "message":
                "I've been feeling really depressed lately, sometimes life can be really hard ya know, when it rains it pours they say.",
            "status": false,
            "description":
                "Talk to your close friends, not the women you're trying to talk to. The woman you are trying to date is not your psychologist.",
          },
        ]
      },
      {
        "id": 3,
        "message":
            "I noticed your profile, and you seem interesting. What do you like to do for fun?",
        "role": "user",
        "options": []
      },
      {"id": 4, "message": "Stuff.", "role": "flirtUser", "options": []},
      {
        "id": 5,
        "message": "That's pretty vague. Can you be more specific?",
        "role": "user",
        "options": []
      },
      {"id": 6, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 7,
        "message": "Alright, no problem. So, what kind of music are you into?",
        "role": "user",
        "options": []
      },
      {"id": 8, "message": "Anything.", "role": "flirtUser", "options": []},
      {
        "id": 9,
        "message": "Cool, me too. Do you like going to concerts?",
        "role": "user",
        "options": []
      },
      {"id": 10, "message": "Sometimes.", "role": "flirtUser", "options": []},
      {
        "id": 11,
        "message": "Nice! Any favorite bands or artists?",
        "role": "user",
        "options": []
      },
      {"id": 12, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 13,
        "message":
            "Okay, then. Do you have any hobbies or passions you'd like to share?",
        "role": "user",
        "options": []
      },
      {"id": 14, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 15,
        "message":
            "Wow, you're a woman of few words! 😄 Do you enjoy traveling?",
        "role": "user",
        "options": []
      },
      {"id": 16, "message": "Sometimes.", "role": "flirtUser", "options": []},
      {
        "id": 17,
        "message": "Where's the last place you traveled to?",
        "role": "user",
        "options": []
      },
      {
        "id": 18,
        "message": "Can't remember.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 19,
        "message":
            "Haha, alright. I see you get a lot of attention on here. How's that been for you?",
        "role": "user",
        "options": []
      },
      {"id": 20, "message": "Annoying.", "role": "flirtUser", "options": []},
      {
        "id": 21,
        "message":
            "I can imagine. Must be hard to filter through all the messages.",
        "role": "user",
        "options": []
      },
      {"id": 22, "message": "Yeah.", "role": "flirtUser", "options": []},
      {
        "id": 23,
        "message":
            "Well, I hope I'm not annoying you too much with my questions. 😅",
        "role": "user",
        "options": []
      },
      {"id": 24, "message": "You're fine.", "role": "flirtUser", "options": []},
      {
        "id": 25,
        "message": "Thanks! So, what do you do for a living?",
        "role": "user",
        "options": []
      },
      {"id": 26, "message": "I work.", "role": "flirtUser", "options": []},
      {
        "id": 27,
        "message": "That's great! What industry are you in?",
        "role": "user",
        "options": []
      },
      {
        "id": 28,
        "message": "Not important.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 29,
        "message": "Fair enough. You're pretty mysterious, you know that?",
        "role": "user",
        "options": []
      },
      {"id": 30, "message": "I guess.", "role": "flirtUser", "options": []},
      {
        "id": 31,
        "message": "Is there anything you'd like to know about me?",
        "role": "user",
        "options": []
      },
      {
        "id": 32,
        "message":
            "What's your perspective on long-distance relationships, I'm out of town quite often?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "I believe they can work if both partners are committed and communicate well.",
            "status": false,
            "description":
                "Long distance relationships rarely work even if both are committed. Eventually someone steps outside the relationship to have their needs met.",
          },
          {
            "role": "user",
            "message":
                "Long-distance relationships are too challenging; I prefer to date locally.",
            "status": true,
            "description":
                "Correct answer. Being in a long distance relationship only benefits a women, she gets emotional support, possibly financial support, meanwhile you get nothing in return.",
          },
          {
            "role": "user",
            "message":
                "I've never been in one, but I'm open to trying if the connection is strong.",
            "status": false,
            "description":
                "Long distance relationships are not worth the effort, as you waste valuable time on something that isn't going to materialize.",
          },
        ]
      },
      {
        "id": 33,
        "message": "Is there anything else you'd like to know about me?",
        "role": "user",
        "options": []
      },
      {"id": 34, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 35,
        "message":
            "Alright, no problem. If you ever change your mind and want to chat or know more about me, feel free to ask. Have a good day!",
        "role": "user",
        "options": []
      },
      {
        "id": 36,
        "message": "You too.",
        "role": "flirtUser",
        "options": [],
        "time": "Time Passes"
      },
      {"id": 37, "message": "Hey again!", "role": "user", "options": []},
      {"id": 38, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 39,
        "message": "Just thought I'd check in and see how you're doing.",
        "role": "user",
        "options": []
      },
      {"id": 40, "message": "Doing okay.", "role": "flirtUser", "options": []},
      {
        "id": 41,
        "message":
            "That's good to hear. Anything interesting happening in your life?",
        "role": "user",
        "options": []
      },
      {"id": 42, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 43,
        "message":
            "Well, it can't be all boring, right? Do you have any favorite movies or TV shows?",
        "role": "user",
        "options": []
      },
      {"id": 44, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 45,
        "message":
            "I feel like I'm pulling teeth here. 😄 What's the most adventurous thing you've ever done?",
        "role": "user",
        "options": []
      },
      {"id": 46, "message": "Dunno.", "role": "flirtUser", "options": []},
      {
        "id": 47,
        "message":
            "Alright, I won't push it. So, do you like animals? Cats or dogs?",
        "role": "user",
        "options": []
      },
      {
        "id": 48,
        "message": "Cats, I guess.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 49,
        "message": "Cool, I'm more of a dog person myself. Have any pets?",
        "role": "user",
        "options": []
      },
      {"id": 50, "message": "No.", "role": "flirtUser", "options": []},
      {
        "id": 51,
        "message":
            "You're really making me work for this conversation, aren't you? 😅",
        "role": "user",
        "options": []
      },
      {"id": 52, "message": "Sorry.", "role": "flirtUser", "options": []},
      {
        "id": 53,
        "message":
            "No need to apologize. I get it, you probably have tons of guys messaging you all the time.",
        "role": "user",
        "options": []
      },
      {
        "id": 54,
        "message": "Yeah, it's overwhelming.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 55,
        "message":
            "I can imagine. Well, I'll let you go for now. If you ever want to talk more, you know where to find me. Have a great day!",
        "role": "user",
        "options": []
      },
      {
        "id": 56,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 57,
        "message": "Hey there, it's been a while!",
        "role": "user",
        "options": []
      },
      {"id": 58, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 59,
        "message":
            "I was wondering if there's anything you'd like to share or talk about today?",
        "role": "user",
        "options": []
      },
      {"id": 60, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 61,
        "message":
            "Alright, you're a tough nut to crack, but I appreciate your honesty. Is there anything you'd like to know about me?",
        "role": "user",
        "options": []
      },
      {"id": 62, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 63,
        "message":
            "Fair enough. Well, I'll let you go then. If you ever change your mind, feel free to reach out. Have a wonderful day!",
        "role": "user",
        "options": []
      },
      {
        "id": 64,
        "message": "You too.",
        "role": "flirtUser",
        "options": [],
        "time": "Time Passes"
      },
      {"id": 65, "message": "Hello again!", "role": "user", "options": []},
      {"id": 66, "message": "Hi.", "role": "flirtUser", "options": []},
      {
        "id": 67,
        "message":
            "I can't help but keep trying to get to know you better. Do you have any favorite books?",
        "role": "user",
        "options": []
      },
      {"id": 68, "message": "Maybe.", "role": "flirtUser", "options": []},
      {
        "id": 69,
        "message":
            "Well, that's something! Any book in particular that made an impact on you?",
        "role": "user",
        "options": []
      },
      {
        "id": 70,
        "message": "Not really.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 71,
        "message":
            "I see. Well, if you ever want to discuss books or anything else, just give me a shout. Have a good one!",
        "role": "user",
        "options": []
      },
      {"id": 72, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 73,
        "message": "Bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 74,
        "message": "Hey, it's me again. 😅",
        "role": "user",
        "options": []
      },
      {"id": 75, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 76,
        "message": "What's your idea of a perfect date night?",
        "role": "user",
        "options": [],
      },
      {
        "id": 77,
        "message": "Idk, what's yours?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "Dinner at a fancy restaurant followed by a romantic walk along the beach.",
            "status": false,
            "description":
                "Never spend large amounts of money on a first date. You're setting yourself up to be used as a wallet in the long term.",
          },
          {
            "role": "user",
            "message": "Going to a live concert and dancing the night away.",
            "status": false,
            "description":
                "Investing large amounts of money on a first date is never a good idea. Better off doing something cheap and easy in an evironment where you can get to know them.",
          },
          {
            "role": "user",
            "message":
                "Exploring an art gallery and discussing our favorite pieces.",
            "status": true,
            "description":
                "Correct answer. This is a great way to get to know someone without spending a lot of money.",
          },
        ]
      },
      {"id": 78, "message": "Fair enough.", "role": "flirtUser", "options": []},
      {
        "id": 79,
        "message": "What's your favorite type of cuisine? ",
        "role": "user",
        "options": []
      },
      {
        "id": 80,
        "message": "Food.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 81,
        "message": "Haha, fair enough. Do you enjoy cooking?",
        "role": "user",
        "options": []
      },
      {"id": 82, "message": "Sometimes.", "role": "flirtUser", "options": []},
      {
        "id": 83,
        "message":
            "Alright, I won't press for recipes then! If you ever want to chat about food or anything else, just remember I'm here. Have a great day!",
        "role": "user",
        "options": []
      },
      {
        "id": 84,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 85,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 86,
        "message": "Hello, stranger! 😊",
        "role": "user",
        "options": []
      },
      {"id": 87, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 88,
        "message":
            "You know, you're a tough nut to crack, but I'm determined. If you could travel anywhere in the world right now, where would you go?",
        "role": "user",
        "options": [],
      },
      {"id": 89, "message": "Don't know.", "role": "flirtUser", "options": []},
      {
        "id": 90,
        "message":
            "Well, I won't give up just yet. If you ever decide you want to chat about your dream destinations or anything else, I'm here. Have a wonderful day!",
        "role": "user",
        "options": []
      },
      {"id": 91, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 92,
        "message": "Bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 93,
        "message":
            "Hey, I know we've been chatting for a while, and you've been pretty reserved. Is there something specific you'd like to discuss or know about?",
        "role": "user",
        "options": [],
      },
      {"id": 94, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 95,
        "message":
            "Alright, I appreciate your honesty. If you ever change your mind or want to have a more engaging conversation, don't hesitate to reach out. Have a fantastic day!",
        "role": "user",
        "options": []
      },
      {
        "id": 96,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 97,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes",
      },
      {
        "id": 98,
        "message": "Hello again! I hope you're having a great day.",
        "role": "user",
        "options": []
      },
      {"id": 99, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 100,
        "message": "How have you been lately?",
        "role": "user",
        "options": []
      },
      {
        "id": 101,
        "message":
            "What's your idea of an ideal vacation? I really need money so I can do some traveling.",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "Lounging on a tropical beach, sipping cocktails, and soaking up the sun.",
            "status": false,
            "description":
                "These questions always lead to them trying to get you to take them on expensive vacations, if you offer, they might give you the time of day, better to stay focused and not give in to these shallow manipulations.",
          },
          {
            "role": "user",
            "message":
                "Exploring a vibrant city, trying new foods, and experiencing the local culture.",
            "status": false,
            "description":
                "These questions always lead to them trying to get you to take them on expensive vacations, if you offer, they might give you the time of day, better to stay focused and not give in to these shallow manipulations.",
          },
          {
            "role": "user",
            "message":
                "I'm not really into vacations; I prefer to stay home and relax.",
            "status": true,
            "description":
                "Correct answer. Being a homebody isn't a bad thing, and giving off the impression that you want to pay for someone elses travel is a simp move. Sometimes it's best to just be honest.",
          },
        ],
      },
      {
        "id": 102,
        "message":
            "I can't help but keep trying to get to know you better. Do you have any favorite travel destinations?",
        "role": "user",
        "options": []
      },
      {"id": 103, "message": "Maybe.", "role": "flirtUser", "options": []},
      {
        "id": 104,
        "message":
            "That's something! Any place you've been dreaming of visiting lately?",
        "role": "user",
        "options": []
      },
      {"id": 105, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 106,
        "message":
            "If you ever want to chat about travel or anything else, you know where to find me. Have a wonderful day!",
        "role": "user",
        "options": []
      },
      {"id": 107, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 108,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 109,
        "message": "Hey, it's me again! 😄",
        "role": "user",
        "options": []
      },
      {"id": 110, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 111,
        "message":
            "I know you're not very talkative, but I'm determined to break through. What's your idea of a perfect weekend?",
        "role": "user",
        "options": []
      },
      {"id": 112, "message": "Dunno.", "role": "flirtUser", "options": []},
      {
        "id": 113,
        "message":
            "Alright, I won't give up just yet. If you ever want to discuss your ideal weekend or anything else, I'm here. Have a great day",
        "role": "user",
        "options": []
      },
      {
        "id": 114,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 115,
        "message": "Hello, it's been a while. How have you been?",
        "role": "user",
        "options": []
      },
      {"id": 116, "message": "Fine.", "role": "flirtUser", "options": []},
      {
        "id": 117,
        "message":
            "That's good to hear. So, what do you like to do in your free time?",
        "role": "user",
        "options": []
      },
      {"id": 118, "message": "Not much.", "role": "flirtUser", "options": []},
      {
        "id": 119,
        "message": "Fair enough. Have you picked up any new hobbies lately?",
        "role": "user",
        "options": []
      },
      {"id": 120, "message": "Nope.", "role": "flirtUser", "options": []},
      {
        "id": 121,
        "message":
            "Well, I'm not giving up yet. If you ever want to share more about yourself or have a different kind of conversation, feel free to let me know. Have a fantastic day!",
        "role": "user",
        "options": []
      },
      {
        "id": 122,
        "message": "You too.",
        "role": "flirtUser",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 123,
        "message": "Hey again, I hope you're doing well!",
        "role": "user",
        "options": []
      },
      {"id": 124, "message": "Hey", "role": "flirtUser", "options": []},
      {
        "id": 125,
        "message":
            "You know, it's been a bit of a challenge getting to know you, but I'm enjoying our conversation, even though it's brief. Do you have any favorite movies?",
        "role": "user",
        "options": []
      },
      {"id": 126, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 127,
        "message":
            "Alright, no worries. If you ever want to chat about movies or anything else, just give me a shout. Have a great day!",
        "role": "user",
        "options": []
      },
      {
        "id": 128,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 129,
        "message": "Take care, bye!.",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {"id": 130, "message": "Hello again! 😊", "role": "user", "options": []},
      {"id": 131, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 132,
        "message":
            "You must get a lot of messages on here, so I appreciate you taking the time to chat with me. Is there anything specific you'd like to talk about today?",
        "role": "user",
        "options": []
      },
      {"id": 133, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 134,
        "message":
            "Fair enough. If you ever decide you want to have a more engaging conversation or share more about yourself, I'll be here. Have a fantastic day!",
        "role": "user",
        "options": []
      },
      {"id": 135, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 136,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 137,
        "message": "Hey, it's me again! 😄",
        "role": "user",
        "options": []
      },
      {"id": 138, "message": "Hey", "role": "flirtUser", "options": []},
      {
        "id": 139,
        "message":
            "You know, I admire your ability to stay so mysterious. If you could have any superpower, what would it be?",
        "role": "user",
        "options": []
      },
      {"id": 140, "message": "Don't know.", "role": "flirtUser", "options": []},
      {
        "id": 141,
        "message":
            "Haha, keeping it a secret, I see. Well, if you ever want to chat about superpowers or anything else, I'm here. Have a great day!",
        "role": "user",
        "options": []
      },
      {"id": 142, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 143,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 144,
        "message": "Hello, stranger! I hope you're doing well.",
        "role": "user",
        "options": []
      },
      {"id": 145, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 146,
        "message":
            "I know our conversations tend to be short and sweet, but I genuinely enjoy chatting with you. Do you have any favorite restaurants in town?",
        "role": "user",
        "options": []
      },
      {"id": 147, "message": "Maybe.", "role": "flirtUser", "options": []},
      {
        "id": 148,
        "message": "That's something! Any particular cuisine you enjoy?",
        "role": "user",
        "options": []
      },
      {"id": 149, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 150,
        "message":
            "Well, if you ever want to share your restaurant recommendations or anything else, don't hesitate to reach out. Have a fantastic day!",
        "role": "user",
        "options": [],
      },
      {"id": 151, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 152,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 153,
        "message": "Hey, it's me again! 😊",
        "role": "user",
        "options": []
      },
      {"id": 154, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 155,
        "message":
            "I can't help but keep trying to get to know you better. Do you have any favorite quotes or sayings?",
        "role": "user",
        "options": []
      },
      {"id": 156, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 157,
        "message":
            "Haha, you're consistent! Well, if you ever want to discuss quotes or anything else, you know where to find me. Have a great day!",
        "role": "user",
        "options": [],
      },
      {
        "id": 158,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 159,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 160,
        "message": "Hello again, I hope you're having a great day.",
        "role": "user",
        "options": []
      },
      {
        "id": 161,
        "message":
            "Hey, I need your help. Can you send me a Cashapp? I need some gas for my car.",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "I can meet up with you and fill up your tank if you want.",
            "status": false,
            "description":
                "Why waste your time and money on someone that can barely hold a conversation.",
          },
          {
            "role": "user",
            "message":
                "No I'm sorry, I've never met you and you're asking me for money.",
            "status": true,
            "description":
                "Correct answer. If a women asks you for money upfront before ever meeting it's a huge red flag, but extremely common on dating apps.",
          },
          {
            "role": "user",
            "message": "Yeah sure no problem.",
            "status": false,
            "description":
                "Never send random internet girls cash! What are you doing?",
          },
        ],
      },
      {
        "id": 162,
        "message": "Sorry, I shouldn't have asked that. I should go now.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 163,
        "message": "It's okay. See you next time, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 164,
        "message": "Hey, it's me again! 😊",
        "role": "user",
        "options": []
      },
      {"id": 165, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 166,
        "message":
            "I know you're not the most talkative person, but I appreciate you continuing to chat with me. Is there anything specific on your mind today?",
        "role": "user",
        "options": []
      },
      {"id": 167, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 168,
        "message":
            "Fair enough. If you ever want to discuss something that interests you or have a different kind of conversation, just let me know. Have a great day!",
        "role": "user",
        "options": [],
      },
      {
        "id": 169,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 170,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 171,
        "message":
            "Hello, it's been a while. How's everything going on your end?",
        "role": "user",
        "options": []
      },
      {"id": 172, "message": "Fine.", "role": "flirtUser", "options": []},
      {
        "id": 173,
        "message":
            "That's good to hear. So, do you have any favorite places you like to visit in your city?",
        "role": "user",
        "options": []
      },
      {"id": 174, "message": "Maybe.", "role": "flirtUser", "options": []},
      {
        "id": 175,
        "message":
            "Haha, you're a tough one, but I appreciate your responses. If you ever want to talk about your favorite spots or anything else, I'm here. Have a fantastic day!",
        "role": "user",
        "options": [],
      },
      {"id": 176, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 177,
        "message": "Bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 178,
        "message": "Hey again, I hope you're doing well!",
        "role": "user",
        "options": []
      },
      {"id": 179, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 180,
        "message":
            "You must be quite busy with all the messages you receive, so I appreciate you taking the time to chat with me. Is there anything specific you'd like to discuss today?",
        "role": "user",
        "options": []
      },
      {"id": 181, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 182,
        "message":
            "Fair enough. If you ever decide you want to have a more engaging conversation or share more about yourself, I'll be here. Have a great day!",
        "role": "user",
        "options": [],
      },
      {"id": 183, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 184,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {"id": 185, "message": "Hello again! 😊", "role": "user", "options": []},
      {"id": 186, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 187,
        "message":
            "You know, it's been a bit of a challenge getting to know you, but I'm enjoying our conversation, even though it's brief. Do you have any favorite hobbies?",
        "role": "user",
        "options": []
      },
      {"id": 188, "message": "Not really.", "role": "flirtUser", "options": []},
      {
        "id": 189,
        "message":
            "Alright, no worries. If you ever want to chat about hobbies or anything else, just give me a shout. Have a great day!",
        "role": "user",
        "options": [],
      },
      {
        "id": 190,
        "message": "Thanks, you too.",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 191,
        "message": "Take care, bye!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 192,
        "message": "Hey, it's me again! 😄",
        "role": "user",
        "options": []
      },
      {"id": 193, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 194,
        "message":
            "I can't help but keep trying to get to know you better. Do you have any favorite activities you enjoy doing in your free time?",
        "role": "user",
        "options": []
      },
      {"id": 195, "message": "Maybe.", "role": "flirtUser", "options": []},
      {
        "id": 196,
        "message":
            "Haha, keeping it mysterious as always! Well, if you ever want to discuss your favorite activities or anything else, I'm here. Have a fantastic day!",
        "role": "user",
        "options": [],
      },
      {"id": 197, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 198,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "time": "Time Passes"
      },
      {
        "id": 199,
        "message": "Hello, stranger! I hope you're doing well.",
        "role": "user",
        "options": []
      },
      {"id": 200, "message": "Hey.", "role": "flirtUser", "options": []},
      {
        "id": 201,
        "message":
            "I know our conversations tend to be short and sweet, but I genuinely enjoy chatting with you. If you could have any job in the world, what would it be?",
        "role": "user",
        "options": []
      },
      {"id": 202, "message": "Don't know.", "role": "flirtUser", "options": []},
      {
        "id": 203,
        "message":
            "Haha, that's okay. If you ever want to share your dream job or anything else, don't hesitate to reach out. Have a fantastic day!",
        "role": "user",
        "options": [],
      },
      {"id": 204, "message": "You too.", "role": "flirtUser", "options": []},
      {
        "id": 205,
        "message": "Bye for now!",
        "role": "user",
        "options": [],
        "description":
            "Jessica is not a great choice. She showed little interest in getting to know you as a person and it's clear she had multiple other men she'd rather chat with. You become her beta orbitor providing money and time with nothing to gain for yourself. Why chase a women that can't even hold a conversation?"
      },
    ]
  },
  {
    "id": 3,
    "userName": "olivia",
    "fullName": "Olivia",
    "gender": "female",
    "age": 25,
    "profilePic": "assets/images/olivia_pfp2.png",
    "isPremium": true,
    "messages": [
      {"id": 1, "message": "Hey there! 😊", "role": "user", "options": []},
      {
        "id": 2,
        "message": "Hi! 🙋‍♀️ How's it going?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "It's going fantastic, had a big breakfast and getting ready to go for a run and then off to get some work done.",
            "status": true,
            "description":
                "Correct answer. Showing that you are positive, healthy, and hard working.",
          },
          {
            "role": "user",
            "message":
                "It's been a rough few weeks, I can't seem to get ahead.",
            "status": false,
            "description":
                "Better off talking to one of your buddies about your problems instead of putting that on someone you just met.",
          },
          {
            "role": "user",
            "message":
                "I've been feeling really depressed lately, sometimes life can be really hard ya know, when it rains it pours they say.",
            "status": false,
            "description":
                "First conversations aren't the place to discuss deep issues your dealing with. This is better suited for your family or close friends. Don't put this drama on someone you just met.",
          }
        ]
      },
      {
        "id": 3,
        "message":
            "Not too bad, just another day in the office. How about you?",
        "role": "user",
        "options": [],
      },
      {
        "id": 4,
        "message":
            "Oh, you know, same old, same old. Work, Netflix, and chatting with interesting people like you. 😄",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 5,
        "message":
            "Haha, well, I'm flattered you find me interesting! So, tell me, what's your favorite thing to binge-watch on Netflix?",
        "role": "user",
        "options": [],
      },
      {
        "id": 6,
        "message":
            "Oh, I'm a total crime drama junkie! Can't get enough of shows like 'Mindhunter' and 'Narcos.' What about you?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 7,
        "message":
            "Nice! I'm more into sci-fi and fantasy, so I'm currently rewatching 'Stranger Things' for the third time. 🚀 What do you do for work, by the way?",
        "role": "user",
        "options": [],
      },
      {
        "id": 8,
        "message":
            "Oh, I work in marketing. It's not as glamorous as it sounds, but it pays the bills. How about you? What's your day job?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 9,
        "message":
            "I'm in IT. I guess we're both dealing with different kinds of 'bugs' in our lives, huh? 😉 What do you like most about your job?",
        "role": "user",
        "options": [],
      },
      {
        "id": 10,
        "message":
            "Haha, true! Well, I love being creative and coming up with new ideas for campaigns. Plus, the occasional free samples of the products we promote don't hurt! 😁 What's the tech world like?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 11,
        "message":
            "It's always evolving, which keeps things interesting. I get to solve problems and help people, which is rewarding. And yeah, the occasional free swag and tech toys are nice perks! 🤖 Do you have any hobbies outside of work?",
        "role": "user",
        "options": [],
      },
      {
        "id": 12,
        "message":
            "Absolutely! I'm into hiking, cooking, and photography. I love capturing moments and creating dishes from different cuisines. How about you?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 13,
        "message":
            "Hiking sounds fun! I enjoy reading, playing the guitar, and trying my hand at some amateur astronomy. 🌌 Do you have a favorite hiking spot?",
        "role": "user",
        "options": [],
      },
      {
        "id": 14,
        "message":
            "Oh, I love the Alps! The scenery is breathtaking, and the fresh air is so rejuvenating. If you ever get the chance, you should definitely check it out! What's your favorite book?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 15,
        "message":
            "The Alps sound amazing! I'll add that to my travel bucket list. As for books, I'm a big fan of science fiction. I think my all-time favorite is 'Dune' by Frank Herbert. Have you read it?",
        "role": "user",
        "options": [],
      },
      {
        "id": 16,
        "message":
            "Not yet, but I've heard great things about it. I'll have to give it a try. What's the best thing you've learned from a book?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 17,
        "message":
            "Well, one of the most valuable lessons I've learned is that empathy is key to understanding others and making meaningful connections. It's a bit of a cliché, but it's true. How about you? Any life-changing lessons from a book?",
        "role": "user",
        "options": [],
      },
      {
        "id": 18,
        "message":
            "That's a beautiful lesson! I'd say one of the books that had a profound impact on me is 'The Power of Now' by Eckhart Tolle. It taught me the importance of living in the moment and finding inner peace. 🧘‍♀️ Do you have any philosophies or life principles you live by?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 19,
        "message":
            "'Carpe Diem' or seize the day! Life's too short to dwell on the past or worry too much about the future. I try to make the most of every moment. How about you? Any personal mottos?",
        "role": "user",
        "options": [],
      },
      {
        "id": 20,
        "message":
            "I like that motto! Mine is 'Spread kindness like confetti.' It's a reminder to always be kind and compassionate to others, even in small ways.",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 21,
        "message": "So, what's your idea of a perfect date?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "Dinner at a fancy restaurant followed by a romantic stroll in the park.",
            "status": false,
            "description":
                "Fancy resturants are a terrible first date as you could drop a large amount of money and never see the person again. Better off with just a walk in the park rather than dropping big money on the first date.",
          },
          {
            "role": "user",
            "message": "Going to a live concert of our favorite band.",
            "status": false,
            "description":
                "Concert tickets can be expensive, is it really worth all that planning, effort, time, and money if the person turns out to not be a match? All that wasted and no second date.",
          },
          {
            "role": "user",
            "message": "Exploring a new hiking trail and having a picnic.",
            "status": true,
            "description":
                "Correct answer. Doing something cheap and easy outside and active is a great opportunity to get to know someone without dropping the bank. It's shows you are active and adventurous without any negatives.",
          }
        ]
      },
      {
        "id": 22,
        "message":
            "If you could travel anywhere in the world, where would you go?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 23,
        "message":
            "If I could travel anywhere, it would have to be Japan. The mix of traditional culture and modern technology fascinates me. Plus, the food is a big draw! How about you?",
        "role": "user",
        "options": [],
      },
      {
        "id": 24,
        "message":
            "Japan is on my list too! I'd also love to explore the colorful streets of India, experience the culture, and try all the different cuisines. Do you enjoy trying new foods?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 25,
        "message":
            "India sounds like an incredible destination! Yes, I'm definitely an adventurous eater. I love trying new dishes and flavors from around the world. Have you had any memorable food experiences?",
        "role": "user",
        "options": [],
      },
      {
        "id": 26,
        "message":
            "Oh, plenty! I once tried street food in Bangkok, and it was mind-blowing. The flavors were so intense, and it was incredibly cheap. What's the most exotic food you've tried?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 27,
        "message":
            "Bangkok street food is legendary! I once tried balut in the Philippines – it's a fertilized duck egg with a nearly developed embryo inside. It was quite the culinary adventure! 😅 What's the most daring thing you've done?",
        "role": "user",
        "options": [],
      },
      {
        "id": 28,
        "message":
            "Wow, that's adventurous! The most daring thing I've done was bungee jumping off a bridge in New Zealand. The adrenaline rush was insane! Have you ever tried any extreme sports?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 29,
        "message":
            "Bungee jumping in New Zealand? That sounds exhilarating! I haven't tried any extreme sports, but I'd love to give skydiving a shot someday. 🪂 What's on your bucket list?",
        "role": "user",
        "options": [],
      },
      {
        "id": 30,
        "message":
            "Skydiving is a great choice! Besides skydiving, I'd love to visit all seven continents, write a book, and learn a new language. How about you? Any big bucket list items?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 31,
        "message":
            "Visiting all seven continents is an ambitious goal! Besides skydiving, I'd love to hike the Inca Trail to Machu Picchu, learn to surf, and maybe even take a hot air balloon ride over Cappadocia. 🌄 Do you enjoy traveling?",
        "role": "user",
        "options": [],
      },
      {
        "id": 32,
        "message":
            "Those sound amazing! Yes, I absolutely love traveling. Exploring new places, meeting new people, and experiencing different cultures is so enriching. Do you have a favorite travel memory?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 33,
        "message":
            "Traveling is a wonderful way to broaden your horizons! One of my favorite travel memories is watching the sunrise at Angkor Wat in Cambodia. It was a magical moment that I'll never forget. 🌅 How about you?",
        "role": "user",
        "options": [],
      },
      {
        "id": 34,
        "message":
            "Angkor Wat at sunrise must have been breathtaking! One of my favorite travel memories is swimming with bioluminescent plankton in Puerto Rico. The water lit up like a starry sky when you moved – truly surreal! ✨ What's your idea of a perfect day?",
        "role": "flirtUser",
        "options": [],
      },
      {
        "id": 35,
        "message":
            "Swimming with bioluminescent plankton sounds like something out of a dream! My perfect day would involve a leisurely breakfast, a hike in the great outdoors, maybe a visit to a museum or art gallery, and then ending with a cozy dinner at a local restaurant, trying out new dishes. Oh, and of course, some stargazing at night. 🌟",
        "role": "user",
        "options": [],
      },
      {
        "id": 36,
        "message": "So, what do you enjoy doing in your free time?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message": "I love outdoor activities like hiking and biking.",
            "status": true,
            "description":
                "Correct answer. Being active and adventurous is attractive to most women. This always you to create an opportunity for a cheap first date as well.",
          },
          {
            "role": "user",
            "message":
                "I'm more of a homebody, so I just hang out at home a lot.",
            "status": false,
            "description":
                "This is boring, even if a women is a homebody herself, she will be looking for something a bit more exciting to get her to go out with you.",
          },
          {
            "role": "user",
            "message": "I'm a foodie, so I like to eat a lot of food.",
            "status": false,
            "description":
                "Not really a bad thing, but kind of a boring answer. Better to lead with something more exciting that will capture her attention and get her interested in meeting you.",
          }
        ]
      },
      {
        "id": 37,
        "message": "That's awesome!",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 38,
        "message":
            "What about you? Any art galleries or museums that you've enjoyed visiting lately?",
        "role": "user",
        "options": []
      },
      {
        "id": 39,
        "message":
            "That sounds charming! I've been lucky to visit some world-renowned museums like the Louvre in Paris and the British Museum in London. But I also enjoy discovering smaller, hidden gems wherever I travel. 🏛️ Do you have a favorite piece of art?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 40,
        "message":
            "Visiting the Louvre and the British Museum must have been incredible! I don't have a favorite piece of art, but I'm drawn to abstract and modern art. The way artists can convey emotions and ideas through their work fascinates me. 🎨 How about you?",
        "role": "user",
        "options": []
      },
      {
        "id": 41,
        "message":
            "Abstract and modern art can be so thought-provoking! It's hard to pick just one favorite, but I've always been captivated by Van Gogh's 'Starry Night.' The swirls of color and the sense of movement in the painting are mesmerizing. 🌌 What's your favorite way to unwind after a long day?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 42,
        "message":
            "'Starry Night' is a masterpiece! After a long day, I like to unwind by playing some relaxing tunes on my guitar, maybe take a walk in the park, or simply curl up with a good book.",
        "role": "user",
        "options": []
      },
      {
        "id": 43,
        "message":
            "So, when it comes to building a strong connection in a relationship, what do you think is most important?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message": "Physical attraction",
            "status": false,
            "description":
                "Attraction is a must in any relationship, however if your entire relationship is just based on lust you're going to get bored or put up with toxic behaviors. Without other aspects to work with the relationship will always end badly.",
          },
          {
            "role": "user",
            "message": "Communication",
            "status": false,
            "description":
                "Communication is key for any relationship, but if you have nothing to talk about because you have no shared interests or attraction the relationship will become stale and boring.",
          },
          {
            "role": "user",
            "message": "Shared interests",
            "status": false,
            "description":
                "Shared interests can be a great way to bond, however without good communication those interests can quickly become mundane. Sometimes it's best to have different interests as well to keep the relationship exciting rather than boring.",
          },
          {
            "role": "user",
            "message": "All of the above",
            "status": true,
            "description":
                "Correct answer. A good relationship doesn't happen over night. It requires many angles and hard work to keep it healthy and happy. Attraction, communication, and shared interests are all pieces of the puzzle that will keep your relationship going strong.",
          }
        ]
      },
      {
        "id": 44,
        "message":
            "Random question. Any go-to relaxation methods after a long day?",
        "role": "user",
        "options": []
      },
      {
        "id": 45,
        "message":
            "I enjoy taking a long, hot bath, lighting some scented candles, and losing myself in a good book or a movie. 🛁🕯️ What's your all-time favorite movie?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 46,
        "message":
            "A hot bath and scented candles are perfect for relaxation! As for my all-time favorite movie, it has to be 'The Shawshank Redemption.' It's a timeless story of hope and resilience. How about you? Any favorite movies or genres?",
        "role": "user",
        "options": []
      },
      {
        "id": 47,
        "message":
            "'The Shawshank Redemption' is a classic! I'm a big fan of sci-fi, so I'd have to go with 'Blade Runner' as one of my favorites. The futuristic dystopian setting and thought-provoking themes always get me. 🌃 What's your take on the future?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 48,
        "message":
            "'Blade Runner' is a sci-fi masterpiece! As for the future, I'm optimistic about technological advancements and the potential for positive change. But I also think it's essential that we address environmental and social challenges. How about you? Any hopes or fears for the future?",
        "role": "user",
        "options": []
      },
      {
        "id": 49,
        "message":
            "I share your optimism for technology, but I also have concerns about environmental sustainability. My hope is that we can find a balance between progress and preserving our planet. 🌍 What's your favorite way to make a positive impact?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 50,
        "message":
            "Finding that balance is crucial! One way I try to make a positive impact is by volunteering at a local youth center, helping kids learn about technology and coding. It's a small contribution, but I hope it can inspire some future innovators. How about you?",
        "role": "user",
        "options": []
      },
      {
        "id": 51,
        "message":
            "Volunteering at a youth center is a fantastic way to make a difference! I'm passionate about animal welfare, so I support various animal shelters and organizations. Every little bit helps, right? 🐾 Have you had any memorable experiences while volunteering?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 52,
        "message":
            "Absolutely! Volunteering can be so rewarding. One memorable experience was seeing a kid I'd been mentoring at the youth center finally grasp a complex coding concept. His excitement and sense of accomplishment were priceless. 🧑‍💻 How about you? Any heartwarming moments from your animal welfare efforts?",
        "role": "user",
        "options": []
      },
      {
        "id": 53,
        "message":
            "That's wonderful! One heartwarming moment was seeing a shelter dog I'd been working with find a loving forever home. Seeing the joy in both the dog's and the new owner's eyes was incredibly touching. 🐶❤️ What's a small act of kindness someone has done for you that you'll never forget?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 54,
        "message":
            "That's such a heartwarming story! One small act of kindness I'll never forget is when a stranger helped me change a flat tire on a rainy night. It reminded me of the goodness in people. 🚗💦 How about you?",
        "role": "user",
        "options": []
      },
      {
        "id": 55,
        "message":
            "Random acts of kindness can truly brighten your day! Once, a friend surprised me with a handwritten letter expressing their appreciation for our friendship. It was unexpected and incredibly meaningful. 💌✨ Have you ever received a surprising gift or gesture?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 56,
        "message":
            "A handwritten letter is such a thoughtful and personal gift! One surprising gesture that stands out for me was when a colleague secretly left a cup of my favorite coffee on my desk one morning. It was such a thoughtful way to start the day. ☕😊",
        "role": "user",
        "options": []
      },
      {
        "id": 57,
        "message":
            "It's the little things that can make a big difference, right? ☺️ What's something you're currently looking forward to in the near future?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 58,
        "message":
            "Absolutely! Right now, I'm looking forward to a weekend camping trip with some friends. We'll be deep in nature, away from the hustle and bustle of the city. It's a great way to recharge. 🏕️ How about you? Anything exciting on your horizon?",
        "role": "user",
        "options": []
      },
      {
        "id": 59,
        "message":
            "A camping trip sounds like a fantastic escape! I'm planning a weekend getaway to a cozy cabin in the mountains. It's my favorite place to relax and disconnect from the digital world. 🌲 Do you have a favorite place to unwind?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 60,
        "message":
            "A cabin in the mountains sounds idyllic! I have a favorite spot by a tranquil lake where I like to go and unwind. There's something incredibly peaceful about the sound of gentle waves and the rustling of leaves. 🌊🍃 What's your go-to way to relax when you're at your cabin?",
        "role": "user",
        "options": []
      },
      {
        "id": 61,
        "message":
            "A lakeside getaway sounds serene! At the cabin, I love to go hiking, read by the fireplace, and stargaze at night. It's a perfect escape from the chaos of daily life. 📚🌠 Do you enjoy stargazing?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 62,
        "message":
            "Stargazing is a favorite pastime of mine! There's nothing like gazing up at the night sky and contemplating the vastness of the universe.",
        "role": "user",
        "options": []
      },
      {
        "id": 63,
        "message": "Where do you see yourself in 5 years?",
        "role": "flirtUser",
        "options": [
          {
            "role": "user",
            "message":
                "I'd like to be married, with children, with my own house",
            "status": false,
            "description":
                "This is way to upfront and a little bit creepy. Not something you really want to talk about in the first conversation.",
          },
          {
            "role": "user",
            "message":
                "I'd like to be in a stable position at work and pick up some new hobbies",
            "status": true,
            "description":
                "Correct answer. This shows you have good work ethic while at the same time showing you're always open to learn and experience new things.",
          },
          {
            "role": "user",
            "message": "I'm hoping to be in a relationship and settle down",
            "status": false,
            "description":
                "Taking life too serious can be unattractive to women, as settling down sounds quite boring. They want something more exciting and fun especially in a first conversation.",
          },
        ]
      },
      {
        "id": 64,
        "message": "Do you have a favorite constellation or celestial object?",
        "role": "user",
        "options": []
      },
      {
        "id": 65,
        "message":
            "I couldn't agree more! I'm fascinated by the Orion constellation. It's so recognizable and has some amazing stars and nebulas within it. 🌌✨ Do you have any favorite hobbies or interests that we haven't talked about yet?",
        "role": "flirtUser",
        "options": []
      },
      {
        "id": 66,
        "message":
            "Orion is a beautiful constellation! Well, I've dabbled in astrophotography to capture some of those celestial wonders. Besides that, I enjoy trying my hand at DIY projects and occasionally cooking up a storm in the kitchen. 📷🔧🍳 How about you?",
        "role": "user",
        "options": []
      },
      {
        "id": 67,
        "message":
            "Astrophotography must be a fascinating hobby! Besides my usual hobbies, I also enjoy gardening. There's something therapeutic about tending to plants and watching them flourish. 🌱🌼",
        "role": "flirtUser",
        "description":
            "Olivia is a great choice. She showed interest and the ability to hold and lead a conversation. She was fun to talk to and asked interesting questions that kept you intrigued, and vice versa. She would be a great example of a girl to look for when trying to find a date with a good women.",
        "options": []
      },
    ]
  }
];
