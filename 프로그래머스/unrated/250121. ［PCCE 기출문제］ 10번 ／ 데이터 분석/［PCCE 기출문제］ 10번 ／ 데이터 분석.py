def solution(data, ext, val_ext, sort_by):
    answer = []
    idx_ext = {"code" : 0, "date" : 1, "maximum" : 2 , "remain" : 3}.get(ext)
    idx_sort_by = {"code" : 0, "date" : 1, "maximum" : 2 , "remain" : 3}.get(sort_by)
    
    for idx in range(len(data)):
        if data[idx][idx_ext] < val_ext:
            answer.append(data[idx])
    
    answer = sorted(answer, key=lambda x:x[idx_sort_by])
    
    return answer