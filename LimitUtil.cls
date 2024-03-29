//Author: @fractastical
//Usage: List<SObject> sos = [select id from MySObject__c limit = :LimitUtil.rowsAvailable() ];

public class LimitUtil
{
    static final Integer PERCENT_PER_QUERY = 65;

	public static Integer rowsAvailable()
	{
		Integer rowLimit = Math.round( ( Limits.getLimitQueryRows() - Limits.getQueryRows() ) *  ( PERCENT_PER_QUERY / 100.00 ) );
		if (rowLimit < 15)
			rowLimit = 1;
		return rowLimit;
	}  

}
