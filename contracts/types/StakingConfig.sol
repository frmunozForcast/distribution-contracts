// SPDX-License-Identifier: BSL-1.0
pragma solidity >=0.8.0 <0.9.0;

struct StakingConfig{
    uint256 dprOver10kk;
    uint256 tokensForRewards;
    uint256 lockPeriodDuration;
    uint256 depositPeriodDuration;
    uint256 startDate;
}

struct StakingConfigUsage {
    StakingConfig config;
    mapping(address => uint256) _stakedPerUser;
    uint256 _activeUsersCounter;
    uint256 _totalStaked;
    bool dropped;
}