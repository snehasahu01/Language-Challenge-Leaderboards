// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LanguageChallengeLeaderboards {

    // Structure to represent a player
    struct Player {
        string name;
        uint score;
    }

    // Mapping from player address to their details
    mapping(address => Player) public players;

    // Array of players to track leaderboard
    address[] public leaderboard;

    // Event to log new score updates
    event ScoreUpdated(address indexed player, uint newScore);

    // Function to register or update a player's score
    function updateScore(string memory _name, uint _score) public {
        // Check if the player already exists
        if (bytes(players[msg.sender].name).length == 0) {
            // If not, register the player
            players[msg.sender].name = _name;
            leaderboard.push(msg.sender);
        }
        
        // Update the player's score
        players[msg.sender].score = _score;

        // Emit event for score update
        emit ScoreUpdated(msg.sender, _score);

        // Update leaderboard
        _updateLeaderboard(msg.sender);
    }

    // Function to get the leaderboard (top 10 players)
    function getLeaderboard() public view returns (address[] memory) {
        return leaderboard;
    }

    // Internal function to reorder the leaderboard
    function _updateLeaderboard(address player) internal {
        uint playerScore = players[player].score;

        // Bubble sort the leaderboard by score
        for (uint i = 0; i < leaderboard.length; i++) {
            for (uint j = i + 1; j < leaderboard.length; j++) {
                if (players[leaderboard[i]].score < players[leaderboard[j]].score) {
                    // Swap the addresses
                    address temp = leaderboard[i];
                    leaderboard[i] = leaderboard[j];
                    leaderboard[j] = temp;
                }
            }
        }

        // Keep only top 10 players
        if (leaderboard.length > 10) {
            leaderboard.pop();
        }
    }

    // Function to get the details of a player
    function getPlayerDetails(address _player) public view returns (string memory name, uint score) {
        return (players[_player].name, players[_player].score);
    }
}
