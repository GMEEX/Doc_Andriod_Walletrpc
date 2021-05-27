package cn.bizzan.ui.wallet;


import java.util.List;

import cn.bizzan.base.Contract;
import cn.bizzan.entity.Coin;
import cn.bizzan.entity.GccMatch;
import cn.bizzan.entity.WalletConstract;
import cn.bizzan.entity.Wallet_Coin;

/**
 * Created by Administrator on 2017/9/25.
 */

public interface OverturnContract {
    interface View extends Contract.BaseView<Presenter> {

        void myWalletUsdtSuccess(Wallet_Coin obj);

        void myWalletListSuccess(List<WalletConstract> obj);

        void myTransSuccess(String obj);

        void myWalletFail(Integer code, String toastMessage);
    }

    interface Presenter extends Contract.BasePresenter {


        void myWalletUsdt(String token);

        void myWalletList(String token);

        void RequesTrans(String token, String unit, String from, String to, String fromWalletId, String toWalletId, String amount);
    }
}
