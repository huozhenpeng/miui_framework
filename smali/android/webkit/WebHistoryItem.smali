.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mNativeBridge:I

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .parameter "nativeBridge"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    :try_start_6
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    iput p1, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeRef(I)V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .registers 3
    .parameter "item"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iget v0, p1, Landroid/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeRef(I)V

    :cond_1c
    return-void
.end method

.method constructor <init>([B)V
    .registers 5
    .parameter "data"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    const-class v1, Landroid/webkit/WebHistoryItem;

    monitor-enter v1

    :try_start_8
    sget v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private native inflate(I[B)I
.end method

.method private native nativeGetFavicon(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFlattenedData(I)[B
.end method

.method private native nativeGetOriginalUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetUrl(I)Ljava/lang/String;
.end method

.method private native nativeRef(I)V
.end method

.method private native nativeUnref(I)V
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .registers 2

    .prologue
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Landroid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeUnref(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    :cond_c
    return-void
.end method

.method public getCustomData()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    :cond_10
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .registers 2

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetFlattenedData(I)[B

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    goto :goto_a
.end method

.method public getId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .registers 8

    .prologue
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    :goto_6
    return-object v2

    :cond_7
    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    :cond_e
    :try_start_e
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v1, url:Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/apple-touch-icon.png"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_30} :catch_33

    iget-object v2, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    .end local v1           #url:Ljava/net/URL;
    :catch_33
    move-exception v0

    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkit/WebHistoryItem;->nativeGetUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method inflate(I)V
    .registers 3
    .parameter "nativeFrame"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebHistoryItem;->inflate(I[B)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mNativeBridge:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .registers 2
    .parameter "data"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mCustomData:Ljava/lang/Object;

    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "icon"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    if-nez p2, :cond_6

    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_6
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mTouchIconUrlFromLink:Ljava/lang/String;

    :cond_8
    return-void
.end method
