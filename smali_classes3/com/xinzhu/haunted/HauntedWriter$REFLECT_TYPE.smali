.class final enum Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;
.super Ljava/lang/Enum;
.source "HauntedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/haunted/HauntedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "REFLECT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

.field public static final enum TYPE_CONSTRUCTOR:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

.field public static final enum TYPE_FIELD_GET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

.field public static final enum TYPE_FIELD_SET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

.field public static final enum TYPE_METHOD:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    const-string v1, "TYPE_CONSTRUCTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_CONSTRUCTOR:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    .line 2
    new-instance v1, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    const-string v3, "TYPE_METHOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_METHOD:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    .line 3
    new-instance v3, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    const-string v5, "TYPE_FIELD_GET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_FIELD_GET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    .line 4
    new-instance v5, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    const-string v7, "TYPE_FIELD_SET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->TYPE_FIELD_SET:Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->$VALUES:[Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->$VALUES:[Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    invoke-virtual {v0}, [Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xinzhu/haunted/HauntedWriter$REFLECT_TYPE;

    return-object v0
.end method
