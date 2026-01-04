import { Network } from '@meshsdk/core'
import dotenv from 'dotenv'
dotenv.config()

const APP_MNEMONIC = process.env.APP_MNEMONIC || ''
const BLOCKFROST_API_KEY = process.env.BLOCKFROST_API_KEY || ''
const KOIOS_TOKEN = process.env.KOIOS_TOKEN || ''
const APP_NETWORK: Network = (process.env.APP_NETWORK?.toLowerCase() as Network) || 'preprod'
const APP_NETWORK_ID = APP_NETWORK === 'mainnet' ? 1 : 0
export { APP_NETWORK, APP_NETWORK_ID, BLOCKFROST_API_KEY, KOIOS_TOKEN, APP_MNEMONIC }
