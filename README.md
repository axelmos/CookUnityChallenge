# CookUnityChallenge

For this code challenge I decided to use MVVM arquitechture.

I included SDWebImage pod just to demonstrate that I know how to work with external libraries. Normally I use that pod to download images, but in this example is not used.

I like to consume and parse json using the native way, because I feel confortable that way. But I know how to use Alamofire or AFNetworking as well.
You will see some classes in the Services folder that are not used in this example because I'm loading a local json, but I just wanted to leave them there just to show how I will do that in case we need to load a json from an URL.

I always use a Constants file to keep all constants from the project well organized. In this case I also put the strings there, but I have experience working with localizable strings with different languages.

For all the Cart related functions I decided to use a singleton (CartController) because this is a simple project.
I calculated the extra items amount using the last items of the array, in case the user removes a product that is not one of the lasts (after the limit of 6) it will recalculate the total of the extra items.


