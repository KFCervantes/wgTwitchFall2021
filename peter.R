# Peter Nguyen asked me about which categories have been in the top 5

# filters out top 5 for each month
top5 <- subset(Twitch_game_data, Rank <= 5)

# bar plot
ggplot(top5) +
  geom_bar(aes(x=Game, fill=factor(Rank))) + # factor is needed or else color will be grey
  labs(fill="Monthly Popularity") + # more understandable
  coord_flip() # more visible on laptop
