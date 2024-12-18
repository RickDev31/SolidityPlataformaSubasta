//**********************************************************************
// LABORATORIO 3: PLATAFORMA DE SUBASTA
// creacion del token
// Autor : Ricardo Soria
// se creo nueva version con openzeppelin pero se uso la original para
// hacer las pruebas
//**********************************************************************


// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;


import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


/*********************************************************************************
// version creada con openzeppelin
//
contract AuctionToken is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("AuctionToken", "ATKN")
        Ownable(initialOwner)
        ERC20Permit("AuctionToken")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
*********************************************************************************/


 // /*********************************************************************************
// version anterior
// Crea una nueva versión con https://wizard.openzeppelin.com/
// usada para hacer la prueba en REMIX

contract AuctionToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("AuctionToken", "ATKN") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }
}

// *********************************************************************************/

