package com.studywithme.paging;

import com.studywithme.sort.Sorter;

public interface Pageble {
    Integer getPage();
    Integer getOffset();
    Integer getLimit();
    Sorter getSorter();
    void setSorter(Sorter sorter);
    Integer getMaxPageItem();
}
