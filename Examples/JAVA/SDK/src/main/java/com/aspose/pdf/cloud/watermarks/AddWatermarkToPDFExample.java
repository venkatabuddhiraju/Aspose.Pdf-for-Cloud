package com.aspose.pdf.cloud.watermarks;


import java.nio.file.Path;

import com.aspose.pdf.api.PdfApi;
import com.aspose.pdf.cloud.examples.Configuration;
import com.aspose.pdf.cloud.examples.Utils;
import com.aspose.pdf.cloud.images.ExtractImageDefaultSizeExample;
import com.aspose.pdf.model.SaaSposeResponse;
import com.aspose.pdf.model.Stamp;
import com.aspose.storage.api.StorageApi;


public class AddWatermarkToPDFExample {

	public static void main(String[] args) {
		String fileName = "sample-input.pdf";
		int pageNumber = 1;
		String storage = "";
		String folder = "";
		Stamp body = new Stamp();
		body.setValue ("Aspose.com");
		body.setBackground ( true);
		body.setType ("Text");
		Path inputFile = Utils.getPath(ExtractImageDefaultSizeExample.class, fileName);

		try
		{
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			PdfApi pdfApi = new PdfApi(Configuration.apiKey, Configuration.appSID, true);
		    // Upload source file to aspose cloud storage
		    storageApi.PutCreate(fileName, "", "", inputFile.toFile());

		    // Invoke Aspose.PDF Cloud SDK API to add text stamp to a pdf page
		    SaaSposeResponse apiResponse = pdfApi.PutPageAddStamp(fileName, pageNumber, storage, folder, body);

		    if (apiResponse != null)
		    {
		    	System.out.println("Add Text Stamp (Watermark) to a PDF Page, Done!");
		    }
		}
		catch (Exception ex)
		{
		   ex.printStackTrace();
		}
	}

}