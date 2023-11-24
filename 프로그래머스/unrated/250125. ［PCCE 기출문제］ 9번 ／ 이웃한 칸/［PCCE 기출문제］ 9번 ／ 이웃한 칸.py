def solution(board, h, w):
    n = len(board)
    cnt = 0
    dh = [0, 1, -1, 0]
    dw = [1, 0, 0, -1]
    
    for idx in range(4):
        h_check = h + dh[idx]
        w_check = w + dw[idx]
        
        if ((0 <=  h_check < n) & (0 <= w_check < n)):
            if (board[h][w] == board[h_check][w_check]):
                cnt += 1
    
    return cnt