# MeinToken (MEIN) 🚀

Ein ERC-20 Token auf der Polygon Blockchain mit Mint und Burn Funktionen.

## 📊 Token Informationen

- **Name:** MeinToken
- **Symbol:** MEIN
- **Decimals:** 18
- **Total Supply:** 1,000,000 MEIN
- **Max Supply:** 10,000,000 MEIN
- **Blockchain:** Polygon (MATIC)

## 🔗 Links

- **Contract Address:** `0xEeF20A9F254422495cd16D002167F603d107b6A3`
- **PolygonScan:** [View on PolygonScan](https://polygonscan.com/address/0xEeF20A9F254422495cd16D002167F603d107b6A3)
- **Network:** Polygon Mainnet (Chain ID: 137)

## ✨ Features

- ✅ ERC-20 Standard kompatibel
- ✅ **Mint Funktion** - Owner kann neue Tokens erstellen (bis Max Supply)
- ✅ **Burn Funktion** - Jeder kann seine eigenen Tokens verbrennen
- ✅ **Ownership Transfer** - Ownership kann übertragen werden
- ✅ **Max Supply Protection** - Verhindert übermäßiges Minting
- ✅ Contract ist verifiziert und Open Source

## 🔧 Smart Contract Details

Der Contract nutzt OpenZeppelin's bewährte und sichere Implementierungen:
- `ERC20` - Standard Token Funktionalität
- `ERC20Burnable` - Ermöglicht das Verbrennen von Tokens
- `Ownable` - Zugriffskontrolle für privilegierte Funktionen

### Hauptfunktionen:

**mint(address to, uint256 amount)** - Nur Owner
- Erstellt neue Tokens
- Maximum: 10,000,000 MEIN gesamt

**burn(uint256 amount)** - Jeder User
- Verbrennt eigene Tokens permanent
- Reduziert Total Supply

**transfer / transferFrom** - Standard ERC-20
- Sende Tokens zwischen Adressen

## 📦 Token zu MetaMask hinzufügen

1. Öffne MetaMask
2. Wechsle zu **Polygon Mainnet**
3. Klicke auf "Token importieren"
4. Füge Contract-Adresse ein: `0xEeF20A9F254422495cd16D002167F603d107b6A3`
5. Symbol und Decimals werden automatisch erkannt

## 🛠️ Für Entwickler

### Contract kompilieren:
```bash
Solidity Version: ^0.8.20
Optimizer: Enabled
Runs: 200
```

### Dependencies:
```solidity
@openzeppelin/contracts/token/ERC20/ERC20.sol
@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol
@openzeppelin/contracts/access/Ownable.sol
```

### Mit Contract interagieren:

**Web3.js Beispiel:**
```javascript
const tokenAddress = "0xEeF20A9F254422495cd16D002167F603d107b6A3";
const abi = [...]; // ABI von PolygonScan

const contract = new web3.eth.Contract(abi, tokenAddress);

// Balance abfragen
const balance = await contract.methods.balanceOf(address).call();

// Transfer
await contract.methods.transfer(recipient, amount).send({from: sender});
```

## 📝 Deployment Informationen

- **Deployed:** Januar 2026
- **Network:** Polygon Mainnet
- **Deployment Kosten:** ~0.01 MATIC
- **Deployer/Owner:** `0x8c9d...` (deine Adresse)

## 🔒 Sicherheit

- Contract nutzt OpenZeppelin's audited Libraries
- Ownership ist durch `Ownable` geschützt
- Max Supply verhindert unbegrenztes Minting
- Contract ist verifiziert und Open Source auf PolygonScan

## 📄 Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei für Details

## 🤝 Beitragen

Dieses Projekt ist Open Source. Feedback und Verbesserungsvorschläge sind willkommen!

## ⚠️ Disclaimer

Dieser Token ist ein Lernprojekt. Investiere niemals mehr, als du bereit bist zu verlieren. Dies ist keine Finanzberatung.

---

**Erstellt mit ❤️ auf Polygon**
