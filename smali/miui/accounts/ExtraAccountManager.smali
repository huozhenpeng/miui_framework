.class public Lmiui/accounts/ExtraAccountManager;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "extra_account"

.field public static final EXTRA_BUNDLE:Ljava/lang/String; = "extra_bundle"

.field public static final EXTRA_CLEAR_WHEN_RESET:Ljava/lang/String; = "extra_clear_when_reset"

.field public static final EXTRA_DISABLE_BACK_KEY:Ljava/lang/String; = "extra_disable_back_key"

.field public static final EXTRA_SHOW_FIND_DEVICE:Ljava/lang/String; = "extra_show_find_device"

.field public static final EXTRA_SHOW_SKIP_LOGIN:Ljava/lang/String; = "extra_show_skip_login"

.field public static final EXTRA_SHOW_SYNC_SETTINGS:Ljava/lang/String; = "show_detail"

.field public static final EXTRA_UPDATE_TYPE:Ljava/lang/String; = "extra_update_type"

.field public static final EXTRA_WIPE_DATA:Ljava/lang/String; = "extra_wipe_data"

.field public static final KEY_SKIPPED:Ljava/lang/String; = "key_skipped"

.field public static final LOGIN_ACCOUNTS_POST_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

.field public static final LOGIN_ACCOUNTS_PRE_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "ExtraAccountManager"

.field public static final TYPE_ADD:I = 0x2

.field public static final TYPE_REMOVE:I = 0x1

.field private static mInstance:Lmiui/accounts/ExtraAccountManager;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private final mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/MiuiOnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    new-instance v0, Lmiui/accounts/ExtraAccountManager$3;

    invoke-direct {v0, p0}, Lmiui/accounts/ExtraAccountManager$3;-><init>(Lmiui/accounts/ExtraAccountManager;)V

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-direct/range {p0 .. p6}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$200(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/accounts/ExtraAccountManager;
    .registers 2
    .parameter "context"

    .prologue
    sget-object v0, Lmiui/accounts/ExtraAccountManager;->mInstance:Lmiui/accounts/ExtraAccountManager;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/accounts/ExtraAccountManager;

    invoke-direct {v0, p0}, Lmiui/accounts/ExtraAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/accounts/ExtraAccountManager;->mInstance:Lmiui/accounts/ExtraAccountManager;

    :cond_b
    sget-object v0, Lmiui/accounts/ExtraAccountManager;->mInstance:Lmiui/accounts/ExtraAccountManager;

    return-object v0
.end method

.method private postToHandler(Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    .registers 14
    .parameter "handler"
    .parameter "listener"
    .parameter "account"
    .parameter "type"
    .parameter "extra"
    .parameter "preAdd"

    .prologue
    if-nez p1, :cond_4

    iget-object p1, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    :cond_4
    new-instance v0, Lmiui/accounts/ExtraAccountManager$2;

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/accounts/ExtraAccountManager$2;-><init>(Lmiui/accounts/ExtraAccountManager;ZLandroid/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postToHandler(Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 7
    .parameter "handler"
    .parameter "listener"
    .parameter "accounts"

    .prologue
    const/4 v2, 0x0

    array-length v1, p3

    new-array v0, v1, [Landroid/accounts/Account;

    .local v0, accountsCopy:[Landroid/accounts/Account;
    array-length v1, v0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_c

    iget-object p1, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    :cond_c
    new-instance v1, Lmiui/accounts/ExtraAccountManager$1;

    invoke-direct {v1, p0, p2, v0}, Lmiui/accounts/ExtraAccountManager$1;-><init>(Lmiui/accounts/ExtraAccountManager;Landroid/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addOnAccountsUpdatedListener(Landroid/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 9
    .parameter "listener"
    .parameter "handler"
    .parameter "updateImmediately"

    .prologue
    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "this listener is already added"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v2

    :cond_22
    :try_start_22
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .local v1, wasEmpty:Z
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_1f

    if-eqz p3, :cond_5b

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {p0, p2, p1, v2}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    :cond_5b
    return-void
.end method

.method public removeOnAccountsUpdatedListener(Landroid/accounts/MiuiOnAccountsUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "ExtraAccountManager"

    const-string v2, "Listener was not previously added"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_33
    monitor-exit v1

    goto :goto_1e

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v0
.end method
