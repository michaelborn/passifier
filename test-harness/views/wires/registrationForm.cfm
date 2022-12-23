<cfoutput>
    <form action="##" method="post" class="flex">
        <div class="w-1/2 p-4">
            <div class="mb-4">
                <input
                    type="text"
                    name="username"
                    class="p-4 border-2 border-gray-300 rounded"
                    placeholder="username"
                />
            </div>
            <div class="mb-4">
                <input
                    type="password"
                    name="password"
                    class="p-4 border-2 border-gray-300 rounded"
                    placeholder="password"
                    wire:model="password" 
                    <!--- wire:keydown="calculatePwordStrength" --->
                />
            </div>
            <div class="mb-4">
                <button
                    type="submit"
                    class="p-4 bg-green-800 text-white rounded"
                >Sign Up</button>
            </div>
        </div>

        <cfif len( args.password )>
            <div class="w-1/2 p-4">
                <div class="border border-gray-200 p-4 rounded">

                    <!--- <cfdump var="#args.pstrength#" /> --->
                    <p class="mb-4"><strong>Time to crack: </strong>#args.pstrength.getCrackTimesDisplay().getOfflineFastHashing1e10PerSecond()#</p>
                    <progress max="4" value="#args.pstrength.getScore()#" class="w-full animate-bounce"></progress>
                </div>
            </div>
        </cfif>
    </form>
</cfoutput>