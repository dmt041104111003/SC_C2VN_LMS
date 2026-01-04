use aiken/crypto.{ScriptHash, VerificationKeyHash}
use cardano/assets.{PolicyId}
use cardano/script_context.{ScriptContext}
use cardano/transaction.{OutputReference, Transaction}
use contract/types.{Burn, Mint, MintRedeemer, Remove, StoreRedeemer, Update}
use types/cip68.{CIP68}

validator store(
  title: ByteArray,
  issuer_payment_credential: VerificationKeyHash,
  issuer_stake_credential: VerificationKeyHash,
) {
  spend(
    datum: Option<CIP68>,
    redeemer: StoreRedeemer,
    output_reference: OutputReference,
    transaction: Transaction,
  ) {
    when redeemer is {
      Update -> True
      Remove -> True
    }
  }

  else(_ctx: ScriptContext) {
    fail
  }
}
