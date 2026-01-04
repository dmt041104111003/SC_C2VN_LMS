use aiken/crypto.{ScriptHash, VerificationKeyHash}
use cardano/assets.{PolicyId}
use cardano/script_context.{ScriptContext}
use cardano/transaction.{OutputReference, Transaction}
use contract/types.{Burn, Mint, MintRedeemer, Remove, StoreRedeemer, Update}

validator reference(
  title: ByteArray,
  action: ByteArray,
  issuer_payment_credential: VerificationKeyHash,
  issuer_stake_credential: VerificationKeyHash,
) {
  spend(
    datum: Option<Data>,
    redeemer: Data,
    output_reference: OutputReference,
    transaction: Transaction,
  ) {
    True
  }

  else(_ctx: ScriptContext) {
    fail
  }
}
