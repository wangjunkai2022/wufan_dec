.class public Lcom/airsaid/pickerviewlibrary/b;
.super Lcom/airsaid/pickerviewlibrary/c;
.source "CityPickerView.java"


# instance fields
.field private final u:Landroid/content/Context;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private y:Lorg/json/JSONObject;

.field public z:Lf/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/c;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/b;->u:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->Q()V

    .line 7
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->R()V

    .line 8
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->P()V

    return-void
.end method

.method static synthetic M(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic O(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method private P()V
    .locals 4

    const-string/jumbo v0, "\u9009\u62e9\u57ce\u5e02"

    .line 1
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/c;->J(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airsaid/pickerviewlibrary/c;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0, v0}, Lcom/airsaid/pickerviewlibrary/c;->t(ZZZ)V

    .line 4
    invoke-virtual {p0, v0, v0, v0}, Lcom/airsaid/pickerviewlibrary/c;->E(III)V

    .line 5
    new-instance v0, Lcom/airsaid/pickerviewlibrary/b$a;

    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/b$a;-><init>(Lcom/airsaid/pickerviewlibrary/b;)V

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/c;->y(Lcom/airsaid/pickerviewlibrary/c$a;)V

    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "city.json"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 5
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private R()V
    .locals 13

    const-string v0, "name"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Lorg/json/JSONObject;

    const-string v2, "citylist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "city"

    .line 7
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v8, 0x0

    .line 8
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 9
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "area"

    .line 13
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v11, 0x0

    .line 14
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 15
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public S(Lf/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/b;->z:Lf/a;

    return-void
.end method
