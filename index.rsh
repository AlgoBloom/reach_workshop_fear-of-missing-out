'reach 0.1';

export const main = Reach.App(() => {
  const A = Participant('Alice', {
    // Specify Alice's interact interface here
  });
  const B = Participant('Bob', {
    // Specify Bob's interact interface here
  });
  init();
  // The first one to publish deploys the contract
  A.publish();
  commit();
  // The second one to publish always attaches
  B.publish();
  commit();
  // write your program here
  exit();
});

//who is involved in this application
//      funcder creates the game and set the first deadline
//      particpant class buys tickets and set the next deadline
//what information do they know at the start of application
//      Funder knows the price of the tickets and first deadline
//      Buyer participant knows the price and the next deadline they set
//what info do they discover and use in the program
//      They discover if they win or not if the deadline hits
//what funcds change owenership during the appliation and how
//      Funds go into a smart contract from the ticket buyers
//      Funds go from the smart contract to the winner