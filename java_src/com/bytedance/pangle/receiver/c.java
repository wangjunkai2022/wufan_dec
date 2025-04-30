package com.bytedance.pangle.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static c f10298d;

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, a> f10299a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Map<PluginBroadcastReceiver, BroadcastReceiver> f10300b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Set<Integer> f10301c = new CopyOnWriteArraySet();

    private c() {
    }

    public static c a() {
        if (f10298d == null) {
            synchronized (com.bytedance.pangle.service.a.a.class) {
                if (f10298d == null) {
                    f10298d = new c();
                }
            }
        }
        return f10298d;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f10302a;

        /* renamed from: b  reason: collision with root package name */
        public final Set<PluginBroadcastReceiver> f10303b = new CopyOnWriteArraySet();

        public final void a(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                ZeusLogger.i(ZeusLogger.TAG_RECEIVER, "plugin-receiver:" + pluginBroadcastReceiver.getClass().getSimpleName() + ",action=" + this.f10302a + "[注册完成]");
                this.f10303b.add(pluginBroadcastReceiver);
            }
        }

        public final void a(Context context, Intent intent) {
            Set<PluginBroadcastReceiver> set = this.f10303b;
            if (set == null || set.size() <= 0) {
                return;
            }
            for (PluginBroadcastReceiver pluginBroadcastReceiver : this.f10303b) {
                if (pluginBroadcastReceiver != null) {
                    try {
                        pluginBroadcastReceiver.onReceive(context, intent);
                    } catch (Throwable th) {
                        String action = intent != null ? intent.getAction() : "";
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "plugin-receiver->action:" + action + "[exception]:", th);
                    }
                }
            }
        }
    }

    public final void a(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return;
        }
        Iterator<String> actionsIterator = intentFilter.actionsIterator();
        while (actionsIterator.hasNext()) {
            String next = actionsIterator.next();
            if (next != null) {
                a aVar = this.f10299a.get(next);
                if (aVar != null) {
                    aVar.a(pluginBroadcastReceiver);
                } else {
                    a aVar2 = new a();
                    aVar2.f10302a = next;
                    aVar2.a(pluginBroadcastReceiver);
                    this.f10299a.put(next, aVar2);
                }
            }
        }
    }

    public final void a(Context context, Intent intent) {
        a value;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        Map<String, a> map = this.f10299a;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, a> entry : this.f10299a.entrySet()) {
            if (action.equals(entry.getKey()) && (value = entry.getValue()) != null) {
                ZeusLogger.d(ZeusLogger.TAG_RECEIVER, "action[" + action + "] match success ！ invoke onReceiver");
                value.a(context, intent);
            }
        }
    }
}
