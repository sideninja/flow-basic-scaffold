<br />
<p align="center">
  <a href="https://docs.onflow.org/flow-cli/install/">
    <img src="https://raw.githubusercontent.com/onflow/flow-cli/tmp/cli-dev/quick.svg" alt="Logo" width="470" height="auto">
  </a>

  <p align="center">
    <i>Flow Quickstart will help you develop your first project without breaking a sweat.</i>
    <br />
    <a href="https://docs.onflow.org/flow-cli/install/"><strong>Read on docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/onflow/flow-cli/issues">Development Guidelines</a>
    ·
    <a href="https://github.com/onflow/flow-cli/blob/master/CONTRIBUTING.md">Contribute</a>
  </p>
</p>
<br />
<br />

### 👋 Welcome Flow Developer!
You've come to the right place. We will help you develop your first Flow application.

### 🔨 Getting started
Starting your project is very simple.

1. Run flow setup command `flow setup`
2. Run flow development command `flow dev`
3. Start writing your contracts, we will take care of the rest

### 💿 Flow Setup
Flow setup is the initial command you run to start your new Flow project.
```shell
> flow setup
```
The command will generate standard Flow proejct structure with the following resources:

- **/contracts** all your contract source code goes in this folder, you can read more about Cadence contracts here.
- **/scripts** all your scripts goes here, you can read more about Cadence scripts here.
- **/transactions** all the transactions goes in this folder, you can read more about Cadence transactions here.
- **flow.json** this is a configuration file for your project, but you don't need to worry about it, we will configure everything for you as you go.


### 📦 Flow Develop
Flow develop command can be run after you created the project using the above flow setup command. You can run it like so:
```shell
> flow dev
```
Running this command will start up a local emulator, which behaves similar to the real Flow network so you can use it during testing. It will then automatically watch your project files and make sure to automatically sync all the contracts on the network.

You should see something similar to:
```shell
Development environment activated, we will keep an eye on any new contracts
you crate inside the contract folders and automatically deploy them for you.
If you create a folder inside the contract folder we will automatically
create an account with that name and deploy the contract in that account.


[15:53:38] Syncing all the contracts...

😎 bob
  |- Test contracts/bob/test.cdc

😜 charlie
  |- Goo contracts/charlie/Goo.cdc
  |- Loo contracts/charlie/Loo.cdc

😏 emulator-account
  |- Taa contracts/Taa.cdc
  |- Koo contracts/Koo.cdc
  |- Xoo contracts/Xoo.cdc
  |- Moo contracts/Moo.cdc
```

When you want to import the contract you just created you can simply do by writing the import statement:
```
import Foo
```
We will automatically find your contract named `Foo` and make sure it's deployed and imported ready to be used.
If you want to deploy a contract to a specific account you can just create a folder inside the contracts folder and we will create the account for you which will have the same name as the folder you created. All the contracts inside this folder will be deployed automatically to that account.

Example deploying to charlie account:

_folder structure_
```
/contracts
    Bar.cdc
    /charlie
        Foo.cdc
```

You can then import the `Foo` contract in `Bar` contract the same way as any other contract:
```
import Foo
```


### 🚀 Flow Execute

This command can be used to send transactions or scripts easily by using the following command:
```shell
flow exec sendToken
```
The command will automatically search for that file in scripts and contracts and will execute it for you.


### 🎉 Flow Migrate
After you finish writing your project and you are ready to move on to testnet or mainnet we got you covered ther as well.

You can easily migrate your just created project by running:

```shell
> flow migrate

❓ Where do you want to migrate your project to?
 >  'TESTNET'  <
    'MAINNET'  

Looks like you are missing some of the accounts on the TESTNET:
  - 'charlie'
  - 'bob'

❓ Do you want to create those accounts automatically?
 >  'YES'  <
    'NO'

❗ This command will perform the following:
 - Generate a new ECDSA P-256 public and private key pair.
 - Create a new account on Local Emulator paired with the public key.
 - Save the newly-created account to flow.json and the keys to keys.json.


✨  Project successfully migrated to 'TESTNET'

😎 bob (0xf8d6e0586b0a20c7)
  |- Test contracts/bob/test.cdc

😏 charlie (0xb446e0586b0a20133)
  |- Goo contracts/charlie/Goo.cdc
  |- Loo contracts/charlie/Loo.cdc

```
