use aiken/crypto.{ScriptHash, VerificationKeyHash}
use cardano/assets.{PolicyId, without_lovelace}
use cardano/script_context.{ScriptContext}
use cardano/transaction.{Transaction}
use contract/types.{Burn, Mint, MintRedeemer}
use types/cip68

validator mint(
  course: ByteArray,
  issuer_payment_credential: VerificationKeyHash,
  issuer_stake_credential: VerificationKeyHash,
  store_payment_credential: ScriptHash,
  store_stake_credential: VerificationKeyHash,
) {
  mint(redeemer: MintRedeemer, policy_id: PolicyId, transaction: Transaction) {
    when redeemer is {
      Mint -> True
      Burn -> True
    }
  }

  else(_ctx: ScriptContext) {
    fail
  }
}
