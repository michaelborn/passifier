<cfoutput>
    <form action="##" method="post" class=" w-96 mx-auto">
        <div class="p-4">
            <div class="mb-4">
                <label for="password" class="strong block">Choose a Strong Password:</label>
                <input
                    type="password"
                    name="password"
                    class="p-4 border-2 border-gray-300 rounded w-full block"
                    placeholder="password"
                    wire:model="password"
                />
            </div>

            <cfif len( args.password )>
                <div class="p-4">
                    <div class="border-t-2 border-gray-200 p-4">
                        <p class="mb-4"><strong>Time to crack: </strong>#args.pstrength.getCrackTimesDisplay().getOfflineFastHashing1e10PerSecond()#</p>
                        <progress max="4" value="#args.pstrength.getScore()#" class="w-full animate-bounce"></progress>
                    </div>
                </div>
            </cfif>
        </div>
    </form>
</cfoutput>