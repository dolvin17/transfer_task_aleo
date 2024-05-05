// The 'token_f3_vc' program.
program token_f3_vc.aleo {
    // The `Token' record datatype.
    record Token {
        //The token owner.
        owner: address,
        //The token amount.
        amount: u64,
    }
    // The ´mint' function initializes a new record with
    // the specified number of tokens assigned to the specified receiver.
    transition mint(owner: address, amount: u64) -> Token {
        return Token {
            owner: owner,
            amount: amount,
        };
    }
    // The `transfer' function take the amount of tokens that i want to transfer
    // the address that i want to transfer given a particular record.
    // return both the spent record and unspent record.
    transition transfer(token: Token, to: address, amount: u64) -> (Token, Token) {
        //Check balance
        let diff: u64 = token.amount - amount;

        // Create a new record with the remaining tokens.
        let spent: Token = Token {
            owner: self.caller,
            amount: diff,
        };

        // Create a new record with the transferred tokens.
        let unspent: Token = Token {
            owner: to,
            amount: amount,
        };

        // Return both records.
        return (spent, unspent);
    }
}