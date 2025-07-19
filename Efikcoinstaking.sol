mapping(address => bool) public approvedWallets;

modifier onlyApproved() {
    require(approvedWallets[msg.sender], "⛔ Not an approved wallet");
    _;
}

// You can later call this to add trusted wallets
function authorizeWallet(address _wallet) public {
    approvedWallets[_wallet] = true;
}

// Use onlyApproved modifier on sensitive functions
function claimTokens() public onlyApproved {
    // Claim logic here
}
