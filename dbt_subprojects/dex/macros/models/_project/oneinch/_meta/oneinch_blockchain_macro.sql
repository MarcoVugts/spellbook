{% macro oneinch_blockchain_macro(blockchain) %}

{% set
    config = {
        "chain_id": {
            "ethereum":      "1",
            "bnb":           "56",
            "polygon":       "137",
            "arbitrum":      "42161",
            "optimism":      "10",
            "avalanche_c":   "43114",
            "gnosis":        "100",
            "fantom":        "250",
            "base":          "8453",
            "zksync":        "324",
            "aurora":        "1313161554",
            "klaytn":        "8217",
        },
        "native_token_symbol": {
            "ethereum":      "'ETH'",
            "bnb":           "'BNB'",
            "polygon":       "'MATIC'",
            "arbitrum":      "'ETH'",
            "optimism":      "'ETH'",
            "avalanche_c":   "'AVAX'",
            "gnosis":        "'xDAI'",
            "fantom":        "'FTM'",
            "base":          "'ETH'",
            "zksync":        "'ETH'",
            "aurora":        "'ETH'",
            "klaytn":        "'ETH'",
        },
        "wrapped_native_token_address": {
            "ethereum":      "0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2",
            "bnb":           "0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c",
            "polygon":       "0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270",
            "arbitrum":      "0x82af49447d8a07e3bd95bd0d56f35241523fbab1",
            "optimism":      "0x4200000000000000000000000000000000000006",
            "avalanche_c":   "0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7",
            "gnosis":        "0xe91d153e0b41518a2ce8dd3d7944fa863463a97d",
            "fantom":        "0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83",
            "base":          "0x4200000000000000000000000000000000000006",
            "zksync":        "0x5aea5775959fbc2557cc8789bc1bf90a239d9a91",
            "aurora":        "0xc9bdeed33cd01541e1eed10f90519d2c06fe3feb",
            "klaytn":        "0x",
        },
        "explorer_link": {
            "ethereum":      "'https://etherscan.io'",
            "bnb":           "'https://bscscan.com'",
            "polygon":       "'https://polygonscan.com'",
            "arbitrum":      "'https://arbiscan.io'",
            "optimism":      "'https://explorer.optimism.io'",
            "avalanche_c":   "'https://snowtrace.io'",
            "gnosis":        "'https://gnosisscan.io'",
            "fantom":        "'https://ftmscan.com'",
            "base":          "'https://basescan.org'",
            "zksync":        "'https://explorer.zksync.io'",
            "aurora":        "'https://explorer.aurora.dev'",
            "klaytn":        "'https://klaytnscope.com'",
        },
        "first_deploy_at": {
            "ethereum":      "timestamp '2019-06-03 20:11'",
            "bnb":           "timestamp '2021-02-18 14:37'",
            "polygon":       "timestamp '2021-05-05 09:39'",
            "arbitrum":      "timestamp '2021-06-22 10:27'",
            "optimism":      "timestamp '2021-11-12 09:07'",
            "avalanche_c":   "timestamp '2021-12-22 13:18'",
            "gnosis":        "timestamp '2021-12-22 13:21'",
            "fantom":        "timestamp '2022-03-16 16:20'",
            "base":          "timestamp '2023-08-08 22:19'",
            "zksync":        "timestamp '2023-04-12 10:16'",
            "aurora":        "timestamp '2022-05-25 16:14'",
            "klaytn":        "timestamp '2022-08-02 09:39'",
        },
        "fusion_settlement_addresses": {
            "ethereum":      "array[0xa88800cd213da5ae406ce248380802bd53b47647, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "bnb":           "array[0x1d0ae300eec4093cee4367c00b228d10a5c7ac63, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "polygon":       "array[0x1e8ae092651e7b14e4d0f93611267c5be19b8b9f, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "arbitrum":      "array[0x4bc3e539aaa5b18a82f6cd88dc9ab0e113c63377, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "optimism":      "array[0xd89adc20c400b6c45086a7f6ab2dca19745b89c2, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "avalanche_c":   "array[0x7731f8df999a9441ae10519617c24568dc82f697, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "gnosis":        "array[0xcbdb7490968d4dbf183c60fc899c2e9fbd445308, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "fantom":        "array[0xa218543cc21ee9388fa1e509f950fd127ca82155, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "base":          "array[0x7f069df72b7a39bce9806e3afaf579e54d8cf2b9, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "zksync":        "array[0x11de482747d1b39e599f120d526af512dd1a9326]",
            "aurora":        "array[0xd41b24bba51fac0e4827b6f94c0d6ddeb183cd64, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
            "klaytn":        "array[0xa218543cc21ee9388fa1e509f950fd127ca82155, 0xfb2809a5314473e1165f6b58018e20ed8f07b840]",
        },
        "escrow_factory_addresses": {
            "ethereum":      "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "bnb":           "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "polygon":       "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "arbitrum":      "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a, 0xc02e6487fbf69d6849b4b9ad9ec0bf5ff8d0c2a1]",
            "optimism":      "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "avalanche_c":   "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "gnosis":        "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "fantom":        "array[]",
            "base":          "array[0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a]",
            "zksync":        "array[]",
            "aurora":        "array[]",
            "klaytn":        "array[]",
        },
    }
%}

select * from (values
    ('{{ blockchain }}'{% for data in config.values() %}, {{ data.get(blockchain, "null") }}{% endfor %})
) as t(blockchain{% for item in config.keys() %}, {{ item }}{% endfor %})

{% endmacro %}