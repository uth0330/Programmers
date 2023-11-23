def solution(bandage, health, attacks):
    answer = 0
    hp = health
    bdg_cnt = bandage[0]
    atk_cnt = 0

    for idx in range(1, attacks[len(attacks) - 1][0] + 1):
        if attacks[atk_cnt][0] == idx:
            hp -= attacks[atk_cnt][1]
            atk_cnt += 1
            bdg_cnt = bandage[0]
            if (hp < 1):
                break
        else:
            bdg_cnt -= 1
            hp += bandage[1]
            if bdg_cnt == 0:
                hp += bandage[2]
                bdg_cnt = bandage[0]
            if hp > health:
                hp = health
    
    if hp < 1:
        answer = -1
    else:
        answer = hp
    
    return answer