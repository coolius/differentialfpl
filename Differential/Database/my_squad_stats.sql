select p.name
, ps.price/10.0 price, ps.minutes c_mins, ps.c_ppg_x_mins/100.0 c_ppg_x, ps.c_diff c_diff, ps.c_ppg_x_mins/ps.price c_val_ppgx, psx.c_ppg_x_mins/ps.price a_val_ppgx
, psx.c_ppg_x_mins/100.0 a_ppg_x, psx.c_pp90/100.0 a_pp90, psx.c_fixture_proof a_fixproof, psx.c_gp90/100.0 a_gp90, psx.c_ap90/100.0 a_ap90, psx.c_diff a_diff, psx.minutes a_mins
from player_season ps, player p, dbmoi.squad_gameweek_player sgp, player_season psx
where ps.fpl_id = sgp.fpl_player_id
and sgp.squad_id=791 and sgp.gameweek=8
and ps.season=13 and p._id=ps.player_id
and psx.season=0 and psx.player_id=p._id