# Enigma

Based upon Alan Turing's work on breaking the German Enigma Cipher and the Caesar Cipher, this solo project tasked us with building a tool for creating an encryption algorithm. Enigma used four different shifts within the project, combined together, to create the cipher shift. 

In addition to working with provided shifts, the code also allows for a random shift key between 0 and 99999, with leading zeros. The code was also to be returned in lowercase only, and special characters were not to be translated. 

In addition to encrypting, our Enigma was also to be able to decrypt, using a runner file, based upon the key and date that were used for the encryption. 


### Versions
* Ruby 2.4.1
* Rails 5.2.0

### To Encrypt/Decrypt Messages

```
$ git clone
```

```
Enter message in `message.txt`
```

```
$ ruby ./lib/encrypt.rb message.txt encrypted.txt
```

```
$ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt <key from encrypted message> <date from encrypted message>
```
