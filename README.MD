
## Project Title
**Language Challenge Leaderboards**

## Project Description
The **Language Challenge Leaderboards** is a smart contract deployed on the Ethereum blockchain that allows participants to track their performance in a language challenge or any other competitive event. Players can register their name and score, and the contract will automatically rank players based on their scores. The leaderboard is dynamic, and it always shows the top 10 players. This decentralized solution ensures that rankings are transparent and immutable.

##Contract Address
0xd9145CCE52D386f254917e481eB44e9943F39138


ss

https://ibb.co/StYk5Cy

## Key Features

- **Player Registration**: Players can register with their name and an initial score. The contract records this information tied to their Ethereum address.
  
- **Score Updates**: Players can update their scores at any time, and the leaderboard is automatically reordered to reflect the new ranking.

- **Dynamic Leaderboard**: The contract maintains a dynamic leaderboard of the top 10 players. The leaderboard is re-sorted whenever a player updates their score.

- **Transparent & Immutable**: Since the leaderboard is stored on the Ethereum blockchain, it is public, transparent, and cannot be tampered with by any centralized authority.

- **Efficient Score Update**: Whenever a player's score is updated, the leaderboard is automatically reordered using a simple bubble sort mechanism. While not the most gas-efficient method for larger datasets, this ensures the leaderboard is up-to-date with each score update.

- **Player Details**: Anyone can view a player's name and score by querying the contract with their Ethereum address.



## Future Improvements

- **Optimizing Sorting**: Currently, the leaderboard is sorted using the bubble sort algorithm, which may not be optimal for large datasets or frequent updates. Future improvements could include more efficient sorting algorithms.
  
- **Extended Leaderboards**: Consider expanding the leaderboard to support more than 10 players, with paginated results to manage gas costs effectively.

- **Integration with Front-End**: This contract can be easily integrated with a frontend dApp to provide a user-friendly interface for players to view their rankings, register, and update their scores.




