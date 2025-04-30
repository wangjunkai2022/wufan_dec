.class public final enum Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;
.super Ljava/lang/Enum;
.source "PaPaBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaPaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaPaBeanTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

.field public static final enum TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v1, "TYPE_IMAGE_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v3, "TYPE_TITLE_COLLECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v5, "TYPE_CONTENT_COLLECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v7, "TYPE_CONTENT_GAMEINFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v7, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v9, "TYPE_GAMEFACTORY_LIST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 2
    new-instance v9, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v11, "TYPE_STANDSALONE_LINE_20"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v11, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v13, "TYPE_STANDSALONE_TITLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v13, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v15, "TYPE_STANDSALONE_HORIZONTAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v15, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v14, "TYPE_STANDSALONE_VERTICAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 3
    new-instance v14, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v12, "TYPE_STANDSALONE_TAG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v12, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v10, "TYPE_STANDSALONE_COMPANY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    new-instance v10, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const-string v8, "TYPE_STANDSALONE_LINE_40"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 4
    sput-object v8, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->$VALUES:[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->$VALUES:[Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v0}, [Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value:I

    return v0
.end method
