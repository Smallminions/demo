package com.mobile.dao;import com.mobile.model.Seat;import com.mobile.util.Pagination;import java.util.List;public interface SeatDao {    public List<Seat> getAllSeat(String sarea, Pagination pagination);    public Seat getSeat(String sid);    public boolean findSeat(String sid);    public boolean updateSeat(Seat seat);    public String[] getSeatAreas();}