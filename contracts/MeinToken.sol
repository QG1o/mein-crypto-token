// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MeinToken
 * @dev ERC20 Token mit Mint und Burn Funktionen
 * Nur der Owner kann neue Tokens erstellen (mint)
 * Jeder kann seine eigenen Tokens verbrennen (burn)
 */
contract MeinToken is ERC20, ERC20Burnable, Ownable {
    
    // Maximale Token-Anzahl (optional - entfernen falls unbegrenzt gewünscht)
    uint256 public constant MAX_SUPPLY = 10000000 * 10**18; // 10 Millionen Tokens
    
    /**
     * @dev Constructor - wird beim Deployment ausgeführt
     * Erstellt initial 1 Million Tokens für den Deployer
     */
    constructor() ERC20("MeinToken", "MTK") Ownable(msg.sender) {
        // Erstelle 1 Million Tokens initial
        _mint(msg.sender, 1000000 * 10**decimals());
    }
    
    /**
     * @dev Mint Funktion - nur Owner kann aufrufen
     * @param to Adresse, die die neuen Tokens erhält
     * @param amount Anzahl der zu erstellenden Tokens
     */
    function mint(address to, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "Max supply exceeded");
        _mint(to, amount);
    }
    
    /**
     * @dev Burn Funktion ist bereits durch ERC20Burnable implementiert
     * Jeder User kann seine eigenen Tokens verbrennen mit: burn(amount)
     */
    
    /**
     * @dev Transfer Ownership Funktion - übertrage Kontrolle an neue Adresse
     * Nützlich falls du das Projekt an jemand anderen übergeben willst
     */
    function transferOwnership(address newOwner) public override onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        super.transferOwnership(newOwner);
    }
}
