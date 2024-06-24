# Static DAP Registry

Behold! a Poor man's [DAP Registry](https://github.com/TBD54566975/dap?tab=readme-ov-file#dap-registry) that hosts the contents of `registry` using github pages to serve as a DAP registry. Useful for kicking the tires. 


> [!NOTE]
> Currently acting as a DAP registry for DIDPay - `didpay.me`


# "Registering" a DAP
1. Clone this repo
2. Activate hermit
3. run `just register <your_handle>
4. add whatever money addresses you want




> [!WARNING]
> Currently overwrites any pre-existing DAP.

# How it works
* `didpay.me`'s DID document is hosted at `https://didpay.me/.well-known/did.json` and located [here](./registry/.well-known/did.json)
* creates a `did:web` for all handles e.g. `did:web:didpay.me:moegrammer` by saving the auto-generated did document to `registry/<handle>/did.json`
* saves the registration to `registry/daps/<handle>`