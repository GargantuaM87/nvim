require("yt-player").setup({
  statusline = {
    enabled = true,
    format = "{icon} {title} - {artist} [{position}/{duration}]",
    icon_playing = "▶",
    icon_paused = "⏸",
    truncate_title = 30,
    progress_width = 10,
  },

  search = {
    limit = 10, -- default number of results returned per search query
  },

  notifications = {
    enabled = true,
    notify_on_track_change = true, -- notify when a new song starts playing
    format = "▶ {title} - {artist}", -- customizable notification format
    icon_playing = "▶", -- icon used in notification format
    icon_paused = "⏸", -- icon used when paused
    timeout = 3000, -- notification timeout in ms
  },

  player = {
    queue_display_limit = 5, -- number of upcoming tracks to show in the player layout
  },

  keymaps = {
    enabled = true, -- set to true to enable global keymaps
    prefix = "<leader>y",
    play = "p",
    pause = "s",
    toggle = "t",
    next = "n",
    prev = "b",
    mute = "m",
    volume_up = "+",
    volume_down = "-",
    seek_forward = "f",
    seek_backward = "r",
    speed_up = ">",
    speed_down = "<",
  },
  
  radio = {
    enabled = true, -- set to false to disable autoplay radio by default
    limit = 5,      -- number of related tracks to fetch at a time
  },
  
  sponsorblock = true, -- set to true to automatically skip YouTube sponsor segments
})
