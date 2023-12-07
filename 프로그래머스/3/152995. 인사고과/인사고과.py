def solution(scores):
    answer = 1
    wanho = scores[0]
    
    scores.sort(key=lambda x: (-x[0], x[1]))
    # print(scores)
    b_max = 0
    for idx in range(len(scores)):
        if idx == 0:
            b_max = scores[idx][1]
        if scores[idx][1] >= b_max:
            b_max = scores[idx][1]
            if scores[idx][0] + scores[idx][1] > wanho[0] + wanho[1]:
                answer += 1
        if scores[idx][0] > wanho[0] and scores[idx][1] > wanho[1]:
            answer = -1
            break
    
    return answer