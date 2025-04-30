.class public Lcom/qq/e/comm/util/AdErrorConvertor;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorCode(I)Lcom/qq/e/comm/util/AdError;
    .locals 4

    const/16 v0, 0xfae

    if-eq p0, v0, :cond_3

    const/16 v0, 0xfaf

    if-eq p0, v0, :cond_2

    const/16 v0, 0x139d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x139e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d2

    const/16 v1, 0x7d1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v2, 0xfa1

    packed-switch p0, :pswitch_data_2

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u77e5\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1770

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200202"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200201"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string p0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200103"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string p0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200102"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string p0, "\u521d\u59cb\u5316\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a200101"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfad

    const-string v1, "\u4f7f\u7528\u652f\u6301\u89c6\u9891\u7d20\u6750\u7684\u539f\u751f\u6a21\u677f\u5e7f\u544a\u4f4d\u524d\uff0c\u8bf7\u5347\u7ea7\u60a8\u7684SDK"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_0
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef\uff0c\u8be6\u7ec6\u7801\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfb0

    const-string v1, "\u5e94\u7528\u6a2a\u7ad6\u65b9\u5411\u53c2\u6570\u4e0e\u5e7f\u544a\u4f4d\u652f\u6301\u65b9\u5411\u4e0d\u5339\u914d"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1395

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1394

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u62c9\u53d6\u5e7f\u544a"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1393

    const-string v1, "\u539f\u751f\u6a21\u677f\u6e32\u67d3\u5931\u8d25"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    :sswitch_5
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1392

    const-string v1, "\u5e7f\u544a\u6837\u5f0f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a\u4f4d\u4e0e\u63a5\u53e3\u4f7f\u7528\u662f\u5426\u4e00\u81f4"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    :sswitch_6
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1391

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u5c0f\u65f6\u9650\u989d\uff0c\u8bf7\u4e00\u5c0f\u65f6\u540e\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1390

    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138f

    const-string v1, "\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138e

    const-string v1, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dApp\u7684\u5305\u540d\u548c\u4f18\u91cf\u6c47\u79fb\u52a8\u8054\u76df\u5b98\u7f51\u6ce8\u518c\u7684\u5a92\u4f53\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u56e0\u6b64\u65e0\u5e7f\u544a\u8fd4\u56de"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    :sswitch_a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138d

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u91cf\u6216\u8005\u6d88\u8017\u7b49\u8d85\u8fc7\u65e5\u9650\u989d\uff0c\u8bf7\u660e\u5929\u518d\u8bf7\u6c42\u5e7f\u544a"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138c

    const-string v1, "\u6ca1\u6709\u5e7f\u544a"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_c
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138b

    const-string v1, "\u89c6\u9891\u7d20\u6750\u64ad\u653e\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x138a

    const-string v1, "\u89c6\u9891\u7d20\u6750\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x1389

    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_f
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfab

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u62c9\u53d6\u8d85\u65f6"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa9

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u7684\u81ea\u5b9a\u4e49\u8df3\u8fc7\u6309\u94ae\u5c3a\u5bf8\u5c0f\u4e8e3x3dp"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa8

    const-string v1, "\u8bbe\u5907\u65b9\u5411\u4e0d\u9002\u5408\u5c55\u793a\u5e7f\u544a"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa7

    const-string v1, "\u5f53\u524d\u8bbe\u5907\u6216\u7cfb\u7edf\u4e0d\u652f\u6301"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa6

    const-string v1, "\u539f\u751f\u5e7f\u544a\u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff0c\u8c03\u7528\u70b9\u51fb\u63a5\u53e3\u524d\u672a\u8c03\u7528\u66dd\u5149\u63a5\u53e3"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa5

    const-string v1, "\u5e7f\u544a\u5bb9\u5668\u5c3a\u5bf8\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa4

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa3

    const-string v1, "\u5e7f\u544a\u4f4d\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xfa2

    const-string v1, "Manifest\u6587\u4ef6\u4e2dActivity/Service/Permission\u7684\u58f0\u660e\u6709\u95ee\u9898\u6216\u8005Permission\u6743\u9650\u672a\u6388\u4e88"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_11
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string p0, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u9519\u8bef"

    invoke-direct {v0, v2, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_12
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xbbb

    const-string v1, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_13
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xbba

    const-string v1, "\u7f51\u7edc\u8d85\u65f6"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_14
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0xbb9

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_15
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const/16 p0, 0x7d3

    const-string v1, "SDK\u672a\u521d\u59cb\u5316"

    invoke-direct {v0, p0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_16
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5185\u90e8\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v0, p0

    goto :goto_1

    :pswitch_17
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    const-string p0, "\u521d\u59cb\u5316\u9519\u8bef"

    invoke-direct {v0, v1, p0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5e7f\u544a\u6a21\u677f\u6e32\u67d3\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u8be5\u7c7b\u578b\u5e7f\u544a\u5df2\u5e9f\u5f03\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u7c7b\u578b\u7684\u5e7f\u544a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u540c\u4e00\u6761\u5e7f\u544a\u4e0d\u5141\u8bb8\u591a\u6b21\u5c55\u793a\uff0c\u8bf7\u518d\u6b21\u62c9\u53d6\u540e\u5c55\u793a"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/qq/e/comm/util/AdError;

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5c1a\u672a\u51c6\u5907\u597d"

    invoke-direct {p0, v0, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb9
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfa1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xfab -> :sswitch_f
        0x1389 -> :sswitch_e
        0x138a -> :sswitch_d
        0x138b -> :sswitch_c
        0x138c -> :sswitch_b
        0x138d -> :sswitch_a
        0x138e -> :sswitch_9
        0x138f -> :sswitch_8
        0x1390 -> :sswitch_7
        0x1391 -> :sswitch_6
        0x1392 -> :sswitch_5
        0x1393 -> :sswitch_4
        0x1394 -> :sswitch_3
        0x1395 -> :sswitch_2
        0x1873f -> :sswitch_1
        0x1a216 -> :sswitch_9
        0x61ae5 -> :sswitch_0
        0x61ae6 -> :sswitch_0
        0x61ae7 -> :sswitch_0
        0x61ae8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1a21a
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1abc2
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30da5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30e09
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
