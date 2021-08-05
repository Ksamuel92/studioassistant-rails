module RecordingSessionsHelper
    def band_helper(client)
        client.band ? "The client is bringing their own band" : "The client will not be providing musicians."
    end

    def drums_helper(client)
        client.drums ? "The client will be bringing their own drums. Make sure to let them know to come early to set up." : "The client will be using in house drums (if available)."
    end
end
