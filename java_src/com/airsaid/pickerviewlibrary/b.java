package com.airsaid.pickerviewlibrary;

import android.content.Context;
import com.airsaid.pickerviewlibrary.c;
import java.io.InputStream;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CityPickerView.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: u  reason: collision with root package name */
    private final Context f9290u;

    /* renamed from: v  reason: collision with root package name */
    private ArrayList<String> f9291v;

    /* renamed from: w  reason: collision with root package name */
    private ArrayList<ArrayList<String>> f9292w;

    /* renamed from: x  reason: collision with root package name */
    private ArrayList<ArrayList<ArrayList<String>>> f9293x;

    /* renamed from: y  reason: collision with root package name */
    private JSONObject f9294y;

    /* renamed from: z  reason: collision with root package name */
    public f.a f9295z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CityPickerView.java */
    /* loaded from: classes2.dex */
    public class a implements c.a {
        a() {
        }

        @Override // com.airsaid.pickerviewlibrary.c.a
        public void a(int i2, int i4, int i5) {
            b bVar = b.this;
            if (bVar.f9295z == null || bVar.f9292w.size() <= i2 || ((ArrayList) b.this.f9292w.get(i2)).size() <= i4 || b.this.f9293x.size() <= i2 || ((ArrayList) b.this.f9293x.get(i2)).size() <= i4 || ((ArrayList) ((ArrayList) b.this.f9293x.get(i2)).get(i4)).size() <= i5) {
                return;
            }
            String str = (String) b.this.f9291v.get(i2);
            String str2 = (String) ((ArrayList) b.this.f9292w.get(i2)).get(i4);
            String str3 = (String) ((ArrayList) ((ArrayList) b.this.f9293x.get(i2)).get(i4)).get(i5);
            b.this.f9295z.onCitySelect(str.concat(str2).concat(str3));
            b.this.f9295z.onCitySelect(str, str2, str3);
        }
    }

    public b(Context context) {
        super(context);
        this.f9291v = new ArrayList<>();
        this.f9292w = new ArrayList<>();
        this.f9293x = new ArrayList<>();
        this.f9290u = context;
        Q();
        R();
        P();
    }

    private void P() {
        J("选择城市");
        A(this.f9291v, this.f9292w, this.f9293x, true);
        t(false, false, false);
        E(0, 0, 0);
        y(new a());
    }

    private void Q() {
        try {
            InputStream open = this.f9290u.getAssets().open("city.json");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            this.f9294y = new JSONObject(new String(bArr, "UTF-8"));
            open.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void R() {
        try {
            JSONArray jSONArray = this.f9294y.getJSONArray("citylist");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString("name");
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<ArrayList<String>> arrayList2 = new ArrayList<>();
                JSONArray jSONArray2 = jSONObject.getJSONArray("city");
                for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i4);
                    arrayList.add(jSONObject2.getString("name"));
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    JSONArray jSONArray3 = jSONObject2.getJSONArray("area");
                    for (int i5 = 0; i5 < jSONArray3.length(); i5++) {
                        arrayList3.add(jSONArray3.getString(i5));
                    }
                    arrayList2.add(arrayList3);
                }
                this.f9291v.add(string);
                this.f9292w.add(arrayList);
                this.f9293x.add(arrayList2);
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        this.f9294y = null;
    }

    public void S(f.a aVar) {
        this.f9295z = aVar;
    }
}
