package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class TodayWufunBean {
    private TodayWufunBroadcast bm_broadcast;
    private TodayWufunEverday every_day_discover;
    private long times;
    private List<TodayWufunTodayNew> today_is_new;
    private TodayWufunTopic today_is_topic;

    public TodayWufunBroadcast getBm_broadcast() {
        return this.bm_broadcast;
    }

    public TodayWufunEverday getEvery_day_discover() {
        return this.every_day_discover;
    }

    public long getTimes() {
        return this.times;
    }

    public List<TodayWufunTodayNew> getToday_is_new() {
        return this.today_is_new;
    }

    public TodayWufunTopic getToday_is_topic() {
        return this.today_is_topic;
    }

    public void setBm_broadcast(TodayWufunBroadcast todayWufunBroadcast) {
        this.bm_broadcast = todayWufunBroadcast;
    }

    public void setEvery_day_discover(TodayWufunEverday todayWufunEverday) {
        this.every_day_discover = todayWufunEverday;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public void setToday_is_new(List<TodayWufunTodayNew> list) {
        this.today_is_new = list;
    }

    public void setToday_is_topic(TodayWufunTopic todayWufunTopic) {
        this.today_is_topic = todayWufunTopic;
    }
}
