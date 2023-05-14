// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public Crypto_TokenName="CoinVajrastra";
    string public Crypto_TokenAbbr="VST";
    uint public TotSupl=0;
    string public coindescription="CoinVajrastra has a unique and interesting name for a crypto token!\n"
     "It combines the strength and power of ""Vajra"" with the futuristic and technological sound of" "Astra"",\n"
      "while also emphasizing that it's a cryptocurrency with the ""Coin"" prefix.\n"

    "Overall, I think this name could be a good fit for a token that wants to convey a sense of strength and\n" 
    "security, while also positioning itself as a cutting-edge and innovative cryptocurrency.\n" 
    "It has a strong and memorable name that can certainly help attract attention and interest from potential\n"
    "users and investors.\n";

    // mapping variable here
    mapping (address=>uint)public balances;
    // mint function
    function mint(address acc_address,uint value)external {
        TotSupl+=value;
        balances[acc_address]+=value;
    }
    // burn function
    function burn(address acc_address,uint value)external {
        if(balances[acc_address]>=value)
        TotSupl-=value;
        balances[acc_address]-=value;
    }

}
