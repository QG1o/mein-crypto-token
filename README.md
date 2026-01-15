<div align="center">

# 🪙 MeinToken (QGIO) 🚀

**Ein moderner ERC-20 Token auf der Polygon Blockchain**

[![Polygon](https://img.shields.io/badge/Polygon-8247E5?style=for-the-badge&logo=polygon&logoColor=white)](https://polygon.technology/)
[![ERC-20](https://img.shields.io/badge/ERC--20-Standard-627EEA?style=for-the-badge&logo=ethereum&logoColor=white)](https://eips.ethereum.org/EIPS/eip-20)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-Audited-4E5EE4?style=for-the-badge&logo=openzeppelin&logoColor=white)](https://openzeppelin.com/)

[Contract Address](#-links) • [PolygonScan](#-links) • [Features](#-features) • [Tokenomics](#-tokenomics)

---

</div>

## 📊 Token Informationen

<div align="center">

| Eigenschaft | Wert |
|------------|------|
| **Name** | MeinToken |
| **Symbol** | QGIO |
| **Decimals** | 18 |
| **Initial Supply** | 1,000,000 QGIO |
| **Max Supply** | 10,000,000 QGIO |
| **Blockchain** | Polygon (MATIC) |
| **Chain ID** | 137 |
| **Standard** | ERC-20 |

</div>

## 🔗 Links

<div align="center">

**Contract Address:**
```
0xEeF20A9F254422495cd16D002167F603d107b6A3
```

[![PolygonScan](https://img.shields.io/badge/View%20on-PolygonScan-8247E5?style=for-the-badge&logo=polygonscan&logoColor=white)](https://polygonscan.com/address/0xEeF20A9F254422495cd16D002167F603d107b6A3)
[![Add to MetaMask](https://img.shields.io/badge/Add%20to-MetaMask-FF7139?style=for-the-badge&logo=metamask&logoColor=white)](#-token-zu-metamask-hinzufügen)

</div>

## ✨ Features

<div align="center">

| Feature | Beschreibung | Status |
|---------|--------------|--------|
| 🎯 **ERC-20 Standard** | Vollständig kompatibel mit ERC-20 Standard | ✅ |
| 🪙 **Mint Funktion** | Owner kann neue Tokens erstellen (bis Max Supply) | ✅ |
| 🔥 **Burn Funktion** | Jeder kann seine eigenen Tokens verbrennen | ✅ |
| 👑 **Ownership Transfer** | Ownership kann sicher übertragen werden | ✅ |
| 🛡️ **Max Supply Protection** | Verhindert übermäßiges Minting | ✅ |
| ✅ **Verifiziert** | Contract ist verifiziert und Open Source | ✅ |
| 🔒 **Sicherheit** | Nutzt audited OpenZeppelin Libraries | ✅ |

</div>

## 🔧 Smart Contract Details

<div align="center">

### Technische Architektur

</div>

Der Contract nutzt **OpenZeppelin's** bewährte und sichere Implementierungen:

| Library | Funktion |
|---------|----------|
| `ERC20` | Standard Token Funktionalität (transfer, balance, etc.) |
| `ERC20Burnable` | Ermöglicht das Verbrennen von Tokens |
| `Ownable` | Zugriffskontrolle für privilegierte Funktionen |

### 📋 Hauptfunktionen:

#### 🪙 `mint(address to, uint256 amount)` - Nur Owner
```solidity
function mint(address to, uint256 amount) public onlyOwner
```
- ✅ Erstellt neue Tokens für die angegebene Adresse
- ✅ Maximum: 10,000,000 QGIO gesamt (hard limit)
- ✅ Verhindert übermäßiges Minting durch `MAX_SUPPLY` Check

#### 🔥 `burn(uint256 amount)` - Jeder User
```solidity
function burn(uint256 amount) public
```
- ✅ Verbrennt eigene Tokens permanent
- ✅ Reduziert Total Supply
- ✅ Kann nicht rückgängig gemacht werden

#### 💸 `transfer(address to, uint256 amount)` - Standard ERC-20
```solidity
function transfer(address to, uint256 amount) public returns (bool)
```
- ✅ Sende Tokens zwischen Adressen
- ✅ Standard ERC-20 Transfer Funktion

## 📈 Tokenomics

<div align="center">

```
┌─────────────────────────────────────────┐
│         Token Distribution              │
├─────────────────────────────────────────┤
│  Initial Supply:  1,000,000 QGIO (10%)  │
│  Max Supply:     10,000,000 QGIO       │
│  Available:       9,000,000 QGIO (90%) │
└─────────────────────────────────────────┘
```

**Token Details:**
- 🎯 **Initial Mint:** 1 Million Tokens beim Deployment
- 📊 **Max Supply Cap:** 10 Millionen Tokens (hard limit)
- 🔥 **Burn Mechanism:** Reduziert Total Supply permanent
- ⚡ **Mint Rate:** Kontrolliert durch Owner (bis Max Supply)

</div>

## 📦 Token zu MetaMask hinzufügen

<div align="center">

### Schritt-für-Schritt Anleitung

</div>

1. **Öffne MetaMask** Wallet Extension oder Mobile App
2. **Wechsle zu Polygon Mainnet**
   - Falls nicht vorhanden: [Polygon Network hinzufügen](https://chainlist.org/chain/137)
3. **Klicke auf "Token importieren"** (unten im Wallet)
4. **Füge Contract-Adresse ein:**
   ```
   0xEeF20A9F254422495cd16D002167F603d107b6A3
   ```
5. **Symbol (QGIO) und Decimals (18)** werden automatisch erkannt
6. **Fertig!** 🎉 Dein Token sollte jetzt sichtbar sein

## 🛠️ Für Entwickler

### ⚙️ Contract Kompilierung

| Einstellung | Wert |
|------------|------|
| **Solidity Version** | ^0.8.20 |
| **Optimizer** | Enabled |
| **Runs** | 200 |
| **EVM Version** | default |

### 📦 Dependencies

```solidity
@openzeppelin/contracts/token/ERC20/ERC20.sol
@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol
@openzeppelin/contracts/access/Ownable.sol
```

### 💻 Mit Contract interagieren

#### Web3.js Beispiel:
```javascript
const tokenAddress = "0xEeF20A9F254422495cd16D002167F603d107b6A3";
const abi = [...]; // ABI von PolygonScan

const contract = new web3.eth.Contract(abi, tokenAddress);

// Balance abfragen
const balance = await contract.methods.balanceOf(address).call();
console.log(`Balance: ${web3.utils.fromWei(balance, 'ether')} QGIO`);

// Transfer
await contract.methods.transfer(recipient, amount).send({from: sender});

// Total Supply abfragen
const totalSupply = await contract.methods.totalSupply().call();
```

#### Ethers.js Beispiel:
```javascript
const { ethers } = require("ethers");
const tokenAddress = "0xEeF20A9F254422495cd16D002167F603d107b6A3";
const abi = [...]; // ABI von PolygonScan

const provider = new ethers.providers.JsonRpcProvider("https://polygon-rpc.com/");
const contract = new ethers.Contract(tokenAddress, abi, provider);

// Balance abfragen
const balance = await contract.balanceOf(address);
console.log(`Balance: ${ethers.utils.formatEther(balance)} QGIO`);

// Transfer (mit Signer)
const signer = provider.getSigner();
const contractWithSigner = contract.connect(signer);
await contractWithSigner.transfer(recipient, amount);
```

## 📝 Deployment Informationen

<div align="center">

| Information | Details |
|------------|---------|
| **Deployed** | Januar 2026 |
| **Network** | Polygon Mainnet |
| **Chain ID** | 137 |
| **Deployment Kosten** | ~0.01 MATIC |
| **Status** | ✅ Verifiziert & Live |

</div>

## 🔒 Sicherheit

<div align="center">

### Sicherheits-Features

</div>

- ✅ **OpenZeppelin Libraries** - Nutzt audited und bewährte Smart Contract Libraries
- ✅ **Ownership Protection** - Privilegierte Funktionen sind durch `Ownable` geschützt
- ✅ **Max Supply Protection** - Verhindert unbegrenztes Minting durch hard limit
- ✅ **Verifiziert** - Contract ist verifiziert und Open Source auf PolygonScan
- ✅ **Standard Compliance** - Vollständig ERC-20 kompatibel
- ✅ **Burn Mechanism** - Transparente Token-Vernichtung möglich

<div align="center">

⚠️ **Wichtig:** Dieser Contract wurde für Lernzwecke erstellt. Für Produktionsumgebungen sollte eine professionelle Audit durchgeführt werden.

</div>

## 📄 Lizenz

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

MIT License - siehe [LICENSE](LICENSE) Datei für Details

</div>

## 🤝 Beitragen

<div align="center">

Dieses Projekt ist **Open Source**. Feedback und Verbesserungsvorschläge sind willkommen!

⭐ **Star dieses Repo**, wenn es dir gefällt!

</div>

## ⚠️ Disclaimer

<div align="center">

**WICHTIG:** Dieser Token ist ein **Lernprojekt**. 

- ⚠️ Investiere niemals mehr, als du bereit bist zu verlieren
- ⚠️ Dies ist **keine Finanzberatung**
- ⚠️ Kryptowährungen sind hochriskant
- ⚠️ Immer eigene Recherche durchführen (DYOR)

</div>

---

<div align="center">

**Erstellt mit ❤️ auf Polygon**

[![Polygon](https://img.shields.io/badge/Polygon-8247E5?style=flat-square&logo=polygon&logoColor=white)](https://polygon.technology/)
[![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-Audited-4E5EE4?style=flat-square&logo=openzeppelin&logoColor=white)](https://openzeppelin.com/)

</div>
