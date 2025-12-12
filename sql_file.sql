IF EXISTS (SELECT * FROM sysobjects WHERE name = 'viePos')
DROP view viePos
GO

CREATE view viePos
AS	
	select 
		InfoPrint.*, 
		InfoPrint.Logo as ImageBarcode,
		InfoPrint.Logo as ImageBillQR,
		InfoPrint.Logo as ImageInfoQR,
		InfoPrint.Logo as ImageCard,

		-----------------------------------------------------Title
		Number as Number, 
		Notes as NumberRegester, 
		Notes as NumberFull, 
		Number as NumberDay,
		Notes as NumberDayText, 		

		Notes as BillCode, 
		Notes as BillName, 
		Notes as BillLatinName, 

		Number as PayTypeID,
		Notes as PayType, 
		Notes as TypeBillName,

		Notes as StoreName,
		Notes as StoreLatinName,		

		Notes as CustomerCode,
		Notes as CustomerName,
		Notes as CustomerLatinName,
		Notes as CustomerPhone,
		Notes as CustomerMobile,
		Notes as CustomerBarcode,
		Notes as CustomerAddress,
		Notes as CustomerAddress2,
		Notes as CustomerRegion,
		Notes as CustomerRegion2,
		Notes as CustomerLatitude,
		Notes as CustomerLongitude,
		Notes as CustomerEmail,
		Notes as CustomerNotes,
		Notes as CustomerTaxNumber,
		Notes as CustomerCustomizeField1,
		Notes as CustomerCustomizeField2,
		Notes as CustomerCustomizeField3,
		
		Notes as AccountName, 
		Notes as AccountLatinName, 

		Notes as TableName, 
		Notes as TableLatinName, 
		
		Notes as HostName,
		Notes as HostLatinName,
		Notes as HostPhone,
			
		ModifiedDate as Date, 
		ModifiedDate as DateTime, 
		ModifiedDate as DeliveryDate, 	
		Number as Persons,
		Notes as Notes,
		



		----------------------------------------Items
		Number as NoItems,

		Notes as GroupName, 
		Notes as GroupLatinName,
		
		Notes as PartName, 
		Notes as PartLatinName,

		Notes as MaterialCode, 
		Notes as MaterialName, 
		Notes as MaterialLatinName, 
		Price as MaterialWeigh,
		Notes as MaterialSize,
		Notes as MaterialForm,
		Notes as MaterialBarcode,
		Notes as MaterialNotes, 
		Notes as SizeItems,


		Notes as UnityName,
		Price as FactItems, 

		Price as QtyItems, 
		Price as BonusQtyItems, 
		Price as PriceItems, 
		Price as PriceItemsBeforeVAT,
		Price as TotalItems, 

		
		
		

		


		Price as VATValueItems,
		Price as VATRateItems,

		Price as DiscValueItems,
		Price as DiscRateItems, 
		 
		Price as ExtraValueItems, 
		Price as ExtraRateItems,	
		
		Price as PriceFinalItems, 
		Price as TotalFinalItems, 







		Price as TotalItemsBeforeVAT, 
		Price as TotalItemsAfterVAT,


		Notes as NotesItems,
		
		
		Notes as TaxName, 
		Notes as TaxLatinName, 
		Price as TaxPrice, 
		
		
		Notes as SerialNumber,
		ModifiedDate as ExpireDate,
		
		----------------------------------------------------------Total
		Price as TotalMats, 

		Price as TotalSmart, 
		Notes as TotalSmartText,
		Price as TotalBill, 
		Notes as TotalBillText,

		
		Price as DiscValue, 
		Price as DiscRate, 
		Price as DiscSmart,

		Price as ExtraValue, 
		Price as ExtraRate, 
		Price as ExtraSmart,

		
		Price as TaxValueBill, 
		Price as TaxRateBill,
		Notes as TaxValueBillText,
		Price as TaxSmart,

		Price as TotalFinal, 		
		Notes as TotalFinalText,



		Price as TotalItemsBeforeVATTotal, 
		Price as VATValueItemsTotal, 
		Price as TotalItemsAfterVATTotal, 
		
		Notes as TotalItemsBeforeVATTotalText, 
		Notes as VATValueItemsTotalText, 
		Notes as TotalItemsAfterVATTotalText, 



		Price as PayCash, 
		Price as PayBank,
		Price as Payment,
		Notes as FirstPaymentText,

		Price as TotalNet, 
		Notes as TotalNetText,


		Price as Cash,
		Price as Bank,

		Price as TotalItemsAll,
		Price as DiscItemsTotal,
		Price as ExtraItemsTotal,
		Price as QtyTotal,
		Price as BonusQtyTotal,
		Price as WeighTotal,
		Price as AmountPaid, 
		Price as RemainingAmount, 		
		Price as TaxPriceMax,

		----------------------------------------------------------Footer
		Price as BalanceAccount,
		Price as PreviousBalance,

		Notes as UserName,
		Notes as UserLatinName,
		Notes as UserAddress,
		Notes as UserNotes,		
		
		Notes as EditorName,
		Notes as EditorLatinName,

		Notes as CurrencyCodeDef,
		Price as CurrencyCodePaid,
		Price as CurrencyAmountPaid, 
		Price as CurrencyRemainingAmount,
		--Price as CurrencyValPaid, 
		Price as CurrencyTotalBill,
		Price as CurrencyTotalNet,


		Price as CurrencyVal,
		Notes as CurrencyCode,
		Notes as CurrencyName,
		Notes as CurrencyLatinName,
		
		Price as TotalNetCurrencySecond,
		Price as ValCurrencySecond,
		Notes as CodeCurrencySecond,
		Notes as NameCurrencySecond,


		-----------------------------------------------------------Tax
		Notes as TaxName1, 
		Price as TaxVat1, 
		Price as TaxNet1, 
		Price as TaxTotal1,
		
		Notes as TaxName2, 
		Price as TaxVat2, 
		Price as TaxNet2, 
		Price as TaxTotal2


	from Taxes
	left join dbo.funInfoPrint(0x0) as InfoPrint on InfoPrint.InfoID = 1
	
GO
