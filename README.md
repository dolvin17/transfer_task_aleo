## Creating a new Leo program

`leo new token_f3_vc`
It has to look like this

<img width="698" alt="Pasted Graphic 3" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/324bd7cd-0fba-4114-ba94-668613ebd984">

******Token Struct && mint function for tokens****** 

<img width="546" alt="KaroleKarol-2 ~  cd token_f3_vc" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/b0c5bc42-68c4-43ec-b0f7-5ed350ed7762">

Here is mint function:

<img width="855" alt="Pasted Graphic 2" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/fc3ce9b2-f6c8-41b5-b50c-ffc9f8ee68e9">

Compile the mint function to mint token to address.
`leo run mint <leo address> <amount>`
<img width="1110" alt="image" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/02f3bba3-033f-4cbe-abdf-93dbb59e32f8">
-> Creating the transfer function, which takes the `record` of the token that I have minted, the address to which I want to transfer it and the amount of tokens that I want to transfer, transferring the token that I have minted at the beginning because I am the owner. You must return the balance after the mint, and the amount transferred.
It looks like this:
<img width="877" alt="image" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/70b406c2-bfb3-4d34-b0a2-5f6f42e376bb">
But... what is the record? (first parameter we should pass to transfer function for compile it) 
`A record is a fundamental data structure for encoding user assets and application state.
``
Each account record contains information that specifies the record owner, its stored value, and its application state. Records in Aleo are consumed and newly created from a transition function. A transaction will store multiple transitions, each of which is responsible for the consumption and creation of its individual records. Optionally, if the visibility of the record is private, it can be encrypted using the owner's address secret key.`
Our record Token comes from Output given by mint function compiled. 
Should be pass to transfer function this way: 
`leo run transfer <"record"> <recepient_address> <amount> 
<img width="988" alt="image" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/c1276e2b-3a9b-4699-a05e-72da6688ac8e">
if everything goes perfect, we should get the other two records: balance status, and transfered amount.
<img width="951" alt="image" src="https://github.com/dolvin17/transfer_task_aleo/assets/101130252/ed1f3ac2-7bd8-41e4-b427-3b034be9eb0d">







