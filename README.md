Clone and run make, or just click here for the current pdf: https://github.com/ecawthon/thesis/raw/master/main.pdf  
  
`friend`: what's your thesis on?  
`ecawthon`: it's on decentralized group management  
`ecawthon`: If you have a collective of members who need to have temporary leaders for efficiency reasons  
`ecawthon`: How to elect them such that you don't have to trust anyone to count the vote and you have secret ballots  
`ecawthon`: And such that the leaders can be recalled  
`ecawthon`: And... that amount of summarizing just helped me figure out hoe to frame it  
`ecawthon`: *how  
`ecawthon`: Thanks for asking haha!  
`friend`: wow, that's fascinating. Can you send me a copy when it's finished?  
`friend`: and since it helped, may I ask: what is your proposal?  
`friend`: oops: conclusion  
`ecawthon`: Brb  
`friend`: no worries  
`ecawthon`: ok  
`ecawthon`: democratically organized collectives want to be able to have elected leaders who they can recall  
`ecawthon`: problem 1: verifiability. You want to be able to tell your vote got counted, and that the election result is valid (only valid voters voted and each voted at most once)  
`ecawthon`: problem 2: you want your ballot to be secret (no one can tell how you voted)  
`ecawthon`: problem 3: accountability: you want to be able know the the election result is actually implemented  
`ecawthon`: background:  
`ecawthon`: 1. there's this thing called Dissent in Numbers (DIN), which requires a small number of servers and a large number of clients. Once that's all set up, clients can broadcast anonymous messages to each other  
`ecawthon`: 2. There's a thing called a Linkable Ring Signature (LRS): if you have a set of people (e.g., authors of a subversive newspaper), any one of them can sign an article, and anyone else can look at that signature and confirm that it corresponds to that article, and that SOME member of the group produced the signature, but you can't tell which one. And if you have multiple articles, you can tell whether they had the same author or different authors, but still can't tell WHICH author it was.  
`ecawthon`: Solution/protocol:  
`ecawthon`: so you have your group  
`ecawthon`: everyone in the group can talk to everyone else in the group  
`ecawthon`: basically we are making a temporary DIN setup where some people in the group are both servers and clients, and everyone else is a client. and being a server is an elected position.  
`ecawthon`: For now suppose we start out with a subset of the group members to be servers (I'll come back to this/find a way to explain why this isn't tautological)  
`ecawthon`: Everyone uses their communication channels to start running DIN  
`ecawthon`: now anyone can send anonymous messages to the group  
`ecawthon`: so anyone can propose a new setup/petition/ballot of elected leaders  
`ecawthon`: we treat that ballot/petition/whatever like an article in the LRS thing  
`ecawthon`: so using LRS magic, participant A writes up a petition, signs it with an LRS (so everyone else can tell a member wrote it but not which), and broadcasts that to the group (and because of DIN no one can tell who sent the broadcast)  
`ecawthon`: Now everyone can see the petition and has the option of adding their own LRS and broadcasting that to the group  
`ecawthon`: recall that with multiple signatures, they look different so you can tell a distinct group member produced each signature  
`ecawthon`: oh also when A sent out the petition it said an expiration time  
`ecawthon`: so at the specified time, everyone can see how many people signed the petition  
`ecawthon`: if it's above whatever the consensus threshold is (maybe 2/3 majority?), everyone realizes at the same time who the new leaders are, or knows that the petition failed if it didn't get to 2/3  
`ecawthon`: to recap, we now have problems 1 and 2 solved  
`ecawthon`: for problem 3, DIN already has a way of telling if anyone does DIN wrong  
`ecawthon`: so assuming DIN is done right  
`ecawthon`: then everyone can tell the petition result at the same time  
`ecawthon`: if somebody just like gets up and walks away or whatever, doesn't want to assume the leadership role, etc., then you can just circulate a new petition and start again, since you still have all those communication channels  
`ecawthon`: but that hopefully doesn't happen very often  
`ecawthon`: and that generalizes  
`ecawthon`: if at any point anyone decides they don't like the leaders, they can start a petition to change the leadership, anonymously.  
`ecawthon`: the result: You get the efficiency advantages of having elected leaders, without sacrificing the ultimate power resting with the people!  
`ecawthon`: the contribution is the decentralized/accountability part - there are existing voting protocols that have secret ballots and are verifiable, but they rely on a centralized entity to count the votes  
`ecawthon`: actually I don't need accountability  
`ecawthon`: because all the e-voting papers don't assume the adversary can tell who sent which ballot!  
`ecawthon`: :)  
`ecawthon`: https://en.wikipedia.org/wiki/Rubber_duck_debugging  
`ecawthon`: thank you!!!  
