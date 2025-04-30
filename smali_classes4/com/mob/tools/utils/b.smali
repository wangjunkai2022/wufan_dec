.class public Lcom/mob/tools/utils/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/b;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/tools/utils/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/tools/utils/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/tools/utils/b;

    invoke-direct {v1}, Lcom/mob/tools/utils/b;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    return-object v0
.end method

.method private a(Lcom/mob/tools/utils/b$a;)Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/mob/tools/utils/b$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "019<fjgegnhefefggf(j6gn;jVfghiKg2gffhfkgnfg]j"

    .line 8
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "0215hifkhigngfhh!kIgngfhh9njnYff]lk1fjhifggefm"

    .line 9
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "023:fjgegnhefefggfIjGgnfmfehefgfhgnfjge=nGgnfigeAjk"

    .line 10
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "015Sfjgegnhefefggf^j9gnfjgeDn]gnfg*j"

    .line 12
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "018FfjgegnhefefggfFj6gnfefg5lk?fjhifggefm"

    .line 13
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "020?fjgegnfi5f_fhgnfkfefmgehign[lk+fjhifggefm"

    .line 14
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "014MfjgegnfjgeTnPgnVlk.fjhifggefm"

    .line 15
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "0209fjgegnhiSnFfhfj0fKfghifhfmgn6lkQfjhifggefm"

    .line 16
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "024,fjgegnhefefggf]j.gn1lk)fjhifggefmgnfjPkBgfXk]fhhiNk"

    .line 17
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const-string p1, "022-fjgegnhefefggfWj)gnhi%k8fmhi<k,gn,lk>fjhifggefm"

    .line 18
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    const-string p1, "023\'fjgegngfOkfl2gnfjMkKgf2kTfhhi4kYgnZlk-fjhifggefm"

    .line 19
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_9
    const-string p1, "0278fjgegn%l]fgWl\'gegngehignhefefggf\'jBgnUjGfghiOg4gffhfkgnfgBj"

    .line 20
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "018\'fjgegnGl%fgBl2gegngehign=lk$fjhifggefm"

    .line 22
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_a
    const-string p1, "024;fjgegnhefefggfAj$gn^lkZfjhifggefmgnge?gg@gefjgeNn"

    .line 23
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_b
    const-string p1, "028=fjgegnhefefggf.j=gn]lkAfjhifggefmgnfgfmfifj9knk<fm2f?fhgf"

    .line 24
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_c
    const-string p1, "019Wfjgegnhefefggf@j3gn,jUfghiEgNgffhfkgnfg9j"

    .line 25
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_d
    const-string p1, "021*fjgegnhefefggf5j[gn8lk0fjhifggefmgn!kn\'fefg"

    .line 26
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_e
    const-string p1, "023Nfjgegn4nWfgfefggnfefggn<lk*fjhifggefmgnfmfhYnk"

    .line 27
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "019Mfjgegnhefefggf>j-gn?j-fghiQg0gffhfkgnfg+j"

    .line 29
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "0273fhfmTjJfjgefg%jEgngehigngjfkhi*fkn;ijfjgeRgk)fjIfFfgMk!hi"

    .line 30
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "003Ohh>kf"

    .line 31
    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 33
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private c()Lcom/mob/tools/utils/b$a;
    .locals 6

    const-string v0, "ro.miui.ui.version.code"

    .line 1
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "023[fjgegnLn7fgfefggnfefggn3lk(fjhifggefmgnfmfh3nk"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ro.miui.internal.storage"

    .line 3
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "021:fjgegnhefefggf(j*gn(lk,fjhifggefmgn_kn9fefg"

    .line 4
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.build.hw_emui_api_level"

    .line 5
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.confg.hw_systemversion"

    .line 6
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, "026gkTfjhifghiHfBgnhifkhignfehiQk>gnhjgffk$nkLgnfgfigefm"

    .line 7
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "0261fjgegnNnk!fgiefegnhiBkfSfeGgZhffgiefhfjQjZgnhjgffkJnk"

    .line 8
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "0181fjgegnhjgffkJnkRgnGg2fehegffghi:ekj"

    .line 9
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "024;figeOnWgnhifh_n%hifefmhhgnhiMgk)hhgn5jOfghifhhegf[k"

    .line 10
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "init.svc.health-hal-2-1-samsung"

    .line 11
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v0, "0245fjgegnhefefggfRj7gnOlk+fjhifggefmgnge^gg<gefjge1n"

    .line 12
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    sget-object v0, Lcom/mob/tools/utils/b$a;->e:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_4
    const-string v0, "027Efjgegn.l_fg:l+gegngehignhefefggfPj;gn;j]fghiWg>gffhfkgnfg2j"

    .line 14
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "018;fjgegn\'l%fg+l:gegngehignQlk6fjhifggefm"

    .line 15
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v0, "023Gfjgegngf(kfl\'gnfjWkOgfUk;fhhi8k+gn9lkFfjhifggefm"

    .line 16
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    sget-object v0, Lcom/mob/tools/utils/b$a;->g:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_6
    const-string v0, "022XfjgegnhefefggfHjGgnhi?kTfmhiIk\'gn@lkBfjhifggefm"

    .line 18
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    sget-object v0, Lcom/mob/tools/utils/b$a;->h:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_7
    const-string v0, "014%fhfm=j*fjgefg>j5jkhhgegehhgfBk"

    .line 20
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "026Sfjgegnfige@n\'gnhhgegehhgf;k?gnfigffgEk8fm:f?fgTj0hefhhiUk"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    sget-object v0, Lcom/mob/tools/utils/b$a;->i:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_8
    const-string v0, "020!fjgegnhi[nYfhfj%fOfghifhfmgn]lk5fjhifggefm"

    .line 22
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 23
    sget-object v0, Lcom/mob/tools/utils/b$a;->k:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_9
    const-string v0, "014$fjgegnfjge7n(gn@lk1fjhifggefm"

    .line 24
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    sget-object v0, Lcom/mob/tools/utils/b$a;->l:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_a
    const-string v0, "020AfjgegnfiDf6fhgnfkfefmgehign!lk?fjhifggefm"

    .line 26
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    sget-object v0, Lcom/mob/tools/utils/b$a;->m:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_b
    const-string v0, "0183fjgegnhefefggf:j)gnfefg+lk0fjhifggefm"

    .line 28
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 29
    sget-object v0, Lcom/mob/tools/utils/b$a;->n:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_c
    const-string v0, "023Wfjgegnhefefggf%j<gnfmfehefgfhgnfjgeSn+gnfige?jk"

    .line 30
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "015HfjgegnhefefggfOj[gnfjgeJn=gnfgVj"

    .line 31
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "021Phifkhigngfhh%k)gngfhh^njnVffOlk[fjhifggefm"

    .line 32
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 33
    sget-object v0, Lcom/mob/tools/utils/b$a;->p:Lcom/mob/tools/utils/b$a;

    return-object v0

    :cond_e
    const-string v0, "019,fjgegnhefefggf4j$gnXj.fghi_gSgffhfkgnfg@j"

    .line 34
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "0199fjgegnhefefggf0jIgnUjPfghi1gEgffhfkgnfg]j"

    .line 35
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amigo([\\d.]+)[a-zA-Z]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    sget-object v0, Lcom/mob/tools/utils/b$a;->q:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 37
    :cond_f
    invoke-static {}, Lcom/mob/tools/utils/b$a;->values()[Lcom/mob/tools/utils/b$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 38
    invoke-virtual {v3}, Lcom/mob/tools/utils/b$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mob/tools/utils/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-object v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_11
    sget-object v0, Lcom/mob/tools/utils/b$a;->r:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 40
    :cond_12
    :goto_1
    sget-object v0, Lcom/mob/tools/utils/b$a;->o:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 41
    :cond_13
    :goto_2
    sget-object v0, Lcom/mob/tools/utils/b$a;->f:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 42
    :cond_14
    :goto_3
    sget-object v0, Lcom/mob/tools/utils/b$a;->d:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 43
    :cond_15
    :goto_4
    sget-object v0, Lcom/mob/tools/utils/b$a;->c:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 44
    :cond_16
    :goto_5
    sget-object v0, Lcom/mob/tools/utils/b$a;->b:Lcom/mob/tools/utils/b$a;

    return-object v0

    .line 45
    :cond_17
    :goto_6
    sget-object v0, Lcom/mob/tools/utils/b$a;->a:Lcom/mob/tools/utils/b$a;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/utils/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/tools/utils/b;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/utils/b;->c()Lcom/mob/tools/utils/b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/b;->a(Lcom/mob/tools/utils/b$a;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
